#!/usr/bin/env python3
"""
Contorno PRETO no placar principal do FTS15 (so a sigla do time e o resultado).

Uso:  python3 patch_contorno.py ENTRADA.so SAIDA.so [DESLOCAMENTO]
      DESLOCAMENTO = espessura do contorno em unidades do HUD (padrao 0.9,
      que equivale a ~2px em 720p se o HUD tem 320 de altura). Aumente para
      engrossar (1.2), diminua para afinar (0.6).

Como funciona (CHudCompScore::Render, 0x2853d4):
  * 4 chamadas XGSFont_SetColour (sigla1, sigla2, gols1, gols2) viram
    BL para stub_cor  -> guarda a cor do texto em [sp+0x44] e chama o original.
  * 4 chamadas XGSFont_PrintfUnicode (as mesmas 4) viram BL para stub_texto
    -> desenha o texto 8 vezes em preto deslocado +-D e depois o texto normal.
  * Os stubs ficam numa area vazia (zeros) logo depois do Render: 0x285bf0.
Nao mexe em nenhum outro texto do placar (relogio, "tempo", etc).
"""
import struct, sys, shutil, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from arm_enc import *

CAVE = 0x285bf0
CAVE_END = 0x285db8
SITES_COR   = [0x2855e0, 0x285604, 0x28567c, 0x2856b8]   # bl XGSFont_SetColour
SITES_TEXTO = [0x2855f0, 0x285614, 0x28568c, 0x2856c8]   # bl XGSFont_PrintfUnicode
SITE_ALPHA  = 0x2855d8                                    # bl XGSColour_AddPercentileAlpha

def rd(d, a): return struct.unpack_from('<I', d, a)[0]
def wr(d, a, w): struct.pack_into('<I', d, a, w)

def main():
    if len(sys.argv) < 3:
        print(__doc__); sys.exit(1)
    src, dst = sys.argv[1], sys.argv[2]
    D = float(sys.argv[3]) if len(sys.argv) > 3 else 0.9
    d = bytearray(open(src, 'rb').read())

    stub_sc = CAVE
    stub_pr = CAVE + 0x08
    if all(rd(d, a) == bl(a, stub_sc) for a in SITES_COR) and \
       all(rd(d, a) == bl(a, stub_pr) for a in SITES_TEXTO):
        print("Este arquivo JA esta com o contorno aplicado. Nada feito."); sys.exit(0)

    # alvos originais (PLT) lidos das proprias chamadas
    t_cor = {decode_bl(rd(d, a), a) for a in SITES_COR}
    t_txt = {decode_bl(rd(d, a), a) for a in SITES_TEXTO}
    if len(t_cor) != 1 or len(t_txt) != 1:
        sys.exit("ERRO: as chamadas do placar nao sao as esperadas (arquivo diferente do analisado).")
    SETCOL = t_cor.pop(); PRINT = t_txt.pop()
    ALPHA = decode_bl(rd(d, SITE_ALPHA), SITE_ALPHA)

    # area livre?
    if any(d[i] != 0 for i in range(CAVE, CAVE + 0xD0)):
        sys.exit("ERRO: a area livre 0x%x nao esta vazia neste arquivo." % CAVE)

    code = []
    A = lambda w: code.append(w & 0xFFFFFFFF)
    here = lambda: CAVE + 4 * len(code)

    # ---- stub_cor: guarda a cor e chama XGSFont_SetColour original
    A(str_sp(0, 0x44))
    A(b(0xE, here(), SETCOL))
    assert here() == stub_pr
    # ---- stub_texto
    A(push([4, 5, 6, 8, 9, 14]))
    A(mov_r(4, 0)); A(mov_r(5, 1)); A(mov_r(6, 2))
    p_black = here(); A(0)                                  # ldr r0,[pc,#..] (preenche depois)
    A(mov_r(1, 7))
    A(bl(here(), ALPHA))                                    # r0 = preto com o alfa do placar
    A(mov_i(1, 0))
    A(bl(here(), SETCOL))
    p_adr = here(); A(0)                                    # add r9,pc,#tabela
    A(mov_i(8, 8))
    loop = here()
    A(vldr(0, 9, 0)); A(vmov_to_s(1, 4)); A(vadd(0, 0, 1))
    A(vldr(2, 9, 4)); A(vmov_to_s(3, 5)); A(vadd(2, 2, 3))
    A(vmov_to_r(0, 0)); A(vmov_to_r(1, 2)); A(mov_r(2, 6))
    A(bl(here(), PRINT))
    A(add_i(9, 9, 8))
    A(subs_i(8, 8, 1))
    A(b(0x1, here(), loop))                                 # bne loop
    A(ldr_sp(0, 24 + 0x44))                                 # cor original guardada
    A(mov_i(1, 0))
    A(bl(here(), SETCOL))
    A(mov_r(0, 4)); A(mov_r(1, 5)); A(mov_r(2, 6))
    A(bl(here(), PRINT))
    A(pop([4, 5, 6, 8, 9, 15]))
    black = here(); A(0xFF000000)
    table = here()
    f = lambda v: struct.unpack('<I', struct.pack('<f', v))[0]
    for dx, dy in [(-D,-D),(0,-D),(D,-D),(-D,0),(D,0),(-D,D),(0,D),(D,D)]:
        A(f(dx)); A(f(dy))
    code[(p_black - CAVE)//4] = ldr_pc(0, black - (p_black + 8))
    code[(p_adr - CAVE)//4]   = add_pc(9, table - (p_adr + 8))
    assert CAVE + 4*len(code) <= CAVE_END, "stub grande demais"

    for i, w in enumerate(code): wr(d, CAVE + 4*i, w)
    for a in SITES_COR:   wr(d, a, bl(a, stub_sc))
    for a in SITES_TEXTO: wr(d, a, bl(a, stub_pr))
    open(dst, 'wb').write(d)
    print("OK: %s -> %s  (contorno D=%.2f, stub em 0x%x, %d bytes)" % (src, dst, D, CAVE, 4*len(code)))
    print("SetColour=0x%x Printf=0x%x Alpha=0x%x" % (SETCOL, PRINT, ALPHA))

main()
