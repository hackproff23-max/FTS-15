#!/usr/bin/env python3
"""
Contorno no placar do FTS15 (so sigla do time e resultado) - VERSAO 2.
  * texto CLARO  -> contorno PRETO
  * texto ESCURO -> contorno CINZA   (corrige o "SHW" preto que virava mancha)

Uso:  python3 patch_contorno2.py ENTRADA.so SAIDA.so [ESPESSURA] [CINZA_HEX]
      ESPESSURA padrao 0.9 (unidades do HUD ~2px). CINZA_HEX padrao 9A9A9A.
Aceita arquivo ORIGINAL ou arquivo que ja tem a versao 1 do contorno.

Como funciona (CHudCompScore::Render 0x2853d4):
  4x BL XGSFont_SetColour  -> stub_cor   (guarda a cor do texto em [sp+0x44])
  4x BL XGSFont_PrintfUnicode -> stub_texto (le a cor guardada, soma R+G+B;
     se media < 0x60 usa cinza, senao preto; desenha 8x deslocado e depois
     o texto normal).   Stubs em 0x285bf0 (area de zeros apos o Render).
"""
import struct, sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from arm_enc import *

CAVE, CAVE_END = 0x285bf0, 0x285db8
SITES_COR   = [0x2855e0, 0x285604, 0x28567c, 0x2856b8]
SITES_TEXTO = [0x2855f0, 0x285614, 0x28568c, 0x2856c8]
SITE_ALPHA  = 0x2855d8
def rd(d, a): return struct.unpack_from('<I', d, a)[0]
def wr(d, a, w): struct.pack_into('<I', d, a, w)

def main():
    if len(sys.argv) < 3: print(__doc__); sys.exit(1)
    src, dst = sys.argv[1], sys.argv[2]
    D = float(sys.argv[3]) if len(sys.argv) > 3 else 0.9
    GREY = 0xFF000000 | int(sys.argv[4], 16) if len(sys.argv) > 4 else 0xFF9A9A9A
    d = bytearray(open(src, 'rb').read())
    stub_sc, stub_pr = CAVE, CAVE + 8

    patched = all(rd(d, a) == bl(a, stub_sc) for a in SITES_COR) and \
              all(rd(d, a) == bl(a, stub_pr) for a in SITES_TEXTO)
    if patched:   # versao 1 ja aplicada: recupera alvos originais dos stubs
        SETCOL = decode_b(rd(d, CAVE + 4), CAVE + 4)
        bls = [a for a in range(CAVE + 8, CAVE + 0x100, 4) if (rd(d, a) >> 24) == 0xEB]
        ALPHA = decode_bl(rd(d, bls[0]), bls[0])
        PRINT = decode_bl(rd(d, bls[2]), bls[2])
        print("Versao 1 detectada; atualizando para a versao 2.")
    else:
        t_cor = {decode_bl(rd(d, a), a) for a in SITES_COR}
        t_txt = {decode_bl(rd(d, a), a) for a in SITES_TEXTO}
        if len(t_cor) != 1 or len(t_txt) != 1:
            sys.exit("ERRO: as chamadas do placar nao sao as esperadas (arquivo diferente do analisado).")
        SETCOL, PRINT = t_cor.pop(), t_txt.pop()
        ALPHA = decode_bl(rd(d, SITE_ALPHA), SITE_ALPHA)
        if any(d[i] != 0 for i in range(CAVE, CAVE + 0x100)):
            sys.exit("ERRO: area livre 0x%x nao esta vazia." % CAVE)

    code = []
    A = lambda w: code.append(w & 0xFFFFFFFF)
    here = lambda: CAVE + 4 * len(code)
    A(str_sp(0, 0x44)); A(b(0xE, here(), SETCOL))
    assert here() == stub_pr
    A(push([4, 5, 6, 8, 9, 14]))
    A(mov_r(4, 0)); A(mov_r(5, 1)); A(mov_r(6, 2))
    # --- escolhe preto ou cinza pela cor do texto (guardada em [sp+0x44] do Render)
    A(ldr_sp(3, 24 + 0x44))
    A(lsr_i(1, 3, 16)); A(and_i(1, 1, 0xFF))      # R
    A(lsr_i(2, 3, 8));  A(and_i(2, 2, 0xFF))      # G
    A(and_i(3, 3, 0xFF))                          # B
    A(add_r(1, 1, 2)); A(add_r(1, 1, 3))
    A(lsr_i(1, 1, 2))                             # (R+G+B)/4
    A(cmp_i(1, 0x60))
    p_grey = here();  A(0)                        # ldrlo r0,[pc,#cinza]
    p_black = here(); A(0)                        # ldrhs r0,[pc,#preto]
    A(mov_r(1, 7))
    A(bl(here(), ALPHA))
    A(mov_i(1, 0))
    A(bl(here(), SETCOL))
    p_adr = here(); A(0)
    A(mov_i(8, 8))
    loop = here()
    A(vldr(0, 9, 0)); A(vmov_to_s(1, 4)); A(vadd(0, 0, 1))
    A(vldr(2, 9, 4)); A(vmov_to_s(3, 5)); A(vadd(2, 2, 3))
    A(vmov_to_r(0, 0)); A(vmov_to_r(1, 2)); A(mov_r(2, 6))
    A(bl(here(), PRINT))
    A(add_i(9, 9, 8)); A(subs_i(8, 8, 1)); A(b(0x1, here(), loop))
    A(ldr_sp(0, 24 + 0x44)); A(mov_i(1, 0)); A(bl(here(), SETCOL))
    A(mov_r(0, 4)); A(mov_r(1, 5)); A(mov_r(2, 6))
    A(bl(here(), PRINT))
    A(pop([4, 5, 6, 8, 9, 15]))
    black = here(); A(0xFF000000)
    grey = here();  A(GREY)
    table = here()
    f = lambda v: struct.unpack('<I', struct.pack('<f', v))[0]
    for dx, dy in [(-D,-D),(0,-D),(D,-D),(-D,0),(D,0),(-D,D),(0,D),(D,D)]:
        A(f(dx)); A(f(dy))
    code[(p_grey - CAVE)//4]  = with_cond(ldr_pc(0, grey  - (p_grey + 8)), 0x3)   # LO
    code[(p_black - CAVE)//4] = with_cond(ldr_pc(0, black - (p_black + 8)), 0x2)  # HS
    code[(p_adr - CAVE)//4]   = add_pc(9, table - (p_adr + 8))
    assert CAVE + 4*len(code) <= CAVE_END, "stub grande demais"
    for i in range(CAVE, CAVE):
        if i >= CAVE + 4*len(code): d[i] = 0
    for i, w in enumerate(code): wr(d, CAVE + 4*i, w)
    for a in SITES_COR:   wr(d, a, bl(a, stub_sc))
    for a in SITES_TEXTO: wr(d, a, bl(a, stub_pr))
    open(dst, 'wb').write(d)
    print("OK v2: %s -> %s (D=%.2f, cinza=%08X, stub %d bytes em 0x%x)" % (src, dst, D, GREY, 4*len(code), CAVE))
main()
