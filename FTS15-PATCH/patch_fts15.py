#!/usr/bin/env python3
"""Aplica o novo CHudCompPlayerStats::Render (cartao compacto) no libFTS15.so.
Uso: python3 patch_fts15.py [caminho_do_so]   (padrao: o .so do projeto)
Faz backup em libFTS15.so.orig na primeira vez."""
import sys, os, shutil
here = os.path.dirname(os.path.abspath(__file__))
so = sys.argv[1] if len(sys.argv) > 1 else os.path.join(here, "..", "FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so")
new = open(os.path.join(here, "card.bin"), "rb").read()
OFF = 0x283474
d = bytearray(open(so, "rb").read())
if bytes(d[OFF:OFF+4]) not in (bytes.fromhex("f04f2de9"), new[:4]):
    sys.exit("ERRO: bytes inesperados em 0x283474; .so diferente do esperado. Nada foi alterado.")
if not os.path.exists(so + ".orig"):
    shutil.copy(so, so + ".orig")
d[OFF:OFF+len(new)] = new
open(so, "wb").write(d)
print("OK: %d bytes gravados em 0x%x de %s" % (len(new), OFF, so))
