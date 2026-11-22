#!/usr/bin/env python3
"""Aplica o cartao compacto (gol / amarelo / vermelho) no libFTS15.so.
Uso: python3 patch_fts15.py [caminho_do_so]   (padrao: o .so do projeto)
Faz backup em libFTS15.so.orig na primeira vez. Pode ser rodado de novo (reaplica)."""
import sys, os, shutil, struct
here = os.path.dirname(os.path.abspath(__file__))
so = sys.argv[1] if len(sys.argv) > 1 else os.path.join(here, "..", "FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so")
new = open(os.path.join(here, "card.bin"), "rb").read()
newB = open(os.path.join(here, "cardB.bin"), "rb").read()
REGIAO_B = 0x283ecc   # codigo morto (PlayerNameRenderToTarget) reaproveitado
RENDER = 0x283474
# (endereco do bl, bytes originais do bl, destino novo)
HOOKS = [
  (0x36c1c8, "255ff7eb", 0x283d88),   # setup
  (0x36c2d8, "0265f7eb", 0x283ed8),   # card
  (0x36c34c, "fe4bf7eb", 0x283db4),   # goal
  (0x36c018, "b265f7eb", 0x283f34),   # msg
  (0x36c6a0, "1064f7eb", 0x283f34),   # msg
  (0x36c280, "314cf7eb", 0x283dd8),   # own
  (0x36c370, "dc64f7eb", 0x283f34),   # msg
]
def bl(a, t):
    return struct.pack("<I", 0xEB000000 | (((t - (a + 8)) >> 2) & 0xFFFFFF))
d = bytearray(open(so, "rb").read())
if len(new) > 0x283e28-RENDER or len(newB) > 0x283ff0-REGIAO_B:
    sys.exit('ERRO: codigo grande demais para as regioes livres.')
first = bytes(d[RENDER:RENDER+4])
if first != bytes.fromhex("f04f2de9") and first[3] != 0xEA:
    sys.exit("ERRO: bytes inesperados em 0x283474; .so diferente do esperado. Nada foi alterado.")
for a, orig, t in HOOKS:
    cur = bytes(d[a:a+4])
    if cur != bytes.fromhex(orig) and cur != bl(a, t) and not (cur[3] == 0xEB):
        sys.exit("ERRO: bytes inesperados em 0x%x. Nada foi alterado." % a)
if not os.path.exists(so + ".orig"):
    shutil.copy(so, so + ".orig")
d[RENDER:RENDER+len(new)] = new
d[REGIAO_B:REGIAO_B+len(newB)] = newB
for a, orig, t in HOOKS:
    d[a:a+4] = bl(a, t)
open(so, "wb").write(d)
print("OK: render (%d+%d bytes) + %d ganchos gravados em %s" % (len(new), len(newB), len(HOOKS), so))
