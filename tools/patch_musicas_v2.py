#!/usr/bin/env python3
# FTS15 - lista de musicas automatica (v2)
# Le a pasta assets/data/audio, grava ate 12 faixas nas tabelas da lib,
# corrige contagem, alocacao e passo (128 bytes) e garante que o apktool
# NAO comprima as extensoes de audio (senao o jogo nao abre o arquivo).
import os, re, sys, struct

ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
REC  = os.path.join(ROOT, "FTS15-RECURSOS")
LIB  = os.path.join(REC, "lib", "armeabi-v7a", "libFTS15.so")
AUD  = os.path.join(REC, "assets", "data", "audio")
YML  = os.path.join(REC, "apktool.yml")

EXTS = (".m4a", ".mp3", ".ogg", ".aac", ".wav")
SKIP = ("classical-beethoven-ode-to-joy_epic",)   # hino, nao e faixa do menu
T_FILES, T_ART, T_TRK = 0x623b78, 0x624178, 0x624778
TBL_SZ, STRIDE, MAXN = 0x600, 128, 12
A_COUNT = 0x1915cc
A_MALLOC = (0x1915d8, 0x1915f0, 0x19160c)
A_STRIDE = {0x1916d8: 6, 0x1916dc: 5, 0x1916e0: 4}   # add rX,rX,#imm  (rX)

def w(d, o): return struct.unpack_from("<I", d, o)[0]

files = sorted([f for f in os.listdir(AUD)
                if f.lower().endswith(EXTS) and not any(s in f for s in SKIP)],
               key=str.lower)
if not files:
    sys.exit("ERRO: nenhuma musica encontrada em " + AUD)
if len(files) > MAXN:
    print("AVISO: %d arquivos; usando so os %d primeiros." % (len(files), MAXN))
    files = files[:MAXN]
N = len(files)

d = bytearray(open(LIB, "rb").read())
# ---- verificacoes dos bytes originais
c = w(d, A_COUNT)
assert (c & 0xfffff000) == 0xe3a00000 and 1 <= (c & 0xff) <= 12, "count inesperado %08x" % c
for a in A_MALLOC:
    v = w(d, a); assert (v & 0xffffff00) == 0xe3a00000, "malloc inesperado %08x @%x" % (v, a)
for a, r in A_STRIDE.items():
    v = w(d, a); base = 0xe2800000 | (r << 16) | (r << 12)
    assert v in (base | 0xc01, base | 0x80), "passo inesperado %08x @%x" % (v, a)
assert d[T_FILES:T_FILES+4] != b"", "tabela?"

# ---- monta tabelas
def clean(s):
    return os.path.splitext(s)[0]
tf, ta, tt = bytearray(TBL_SZ), bytearray(TBL_SZ), bytearray(TBL_SZ)
for i, f in enumerate(files):
    path = ("PKG:/data/audio/" + f).encode("utf-8")
    base = clean(f)
    if " - " in base: art, trk = base.split(" - ", 1)
    else: art, trk = "", base
    art, trk = art.strip().encode("utf-8"), trk.strip().encode("utf-8")
    for nm, b in (("arquivo", path), ("artista", art), ("faixa", trk)):
        if len(b) > STRIDE - 1:
            sys.exit("ERRO: nome muito longo (%s): %s" % (nm, f))
    if any(ord(ch) > 127 for ch in f):
        print("AVISO: nome com acento/caractere especial (pode nao abrir): " + f)
    tf[i*STRIDE:i*STRIDE+len(path)] = path
    ta[i*STRIDE:i*STRIDE+len(art)] = art
    tt[i*STRIDE:i*STRIDE+len(trk)] = trk

new = bytearray(d)
new[T_FILES:T_FILES+TBL_SZ] = tf
new[T_ART:T_ART+TBL_SZ] = ta
new[T_TRK:T_TRK+TBL_SZ] = tt
struct.pack_into("<I", new, A_COUNT, 0xe3a00000 | N)
for a in A_MALLOC: struct.pack_into("<I", new, a, 0xe3a00000 | (N * 4))
for a, r in A_STRIDE.items():
    struct.pack_into("<I", new, a, 0xe2800000 | (r << 16) | (r << 12) | 0x80)

if new == d:
    print("Ja aplicado (lib).")
else:
    open(LIB, "wb").write(new)
    print("OK: %d musicas gravadas na lib:" % N)
for i, f in enumerate(files): print("  %2d  %s" % (i + 1, f))

# ---- apktool.yml: nao comprimir audio
if os.path.exists(YML):
    t = open(YML, encoding="utf-8").read()
    need = [e.lstrip(".") for e in sorted(set(os.path.splitext(f)[1].lower() for f in files))]
    m = re.search(r"^doNotCompress:\n((?:- .*\n?)*)", t, re.M)
    if m:
        have = [l[2:].strip().strip("'\"") for l in m.group(1).splitlines()]
        add = [e for e in need if e not in have]
        if add:
            blk = m.group(1)
            if not blk.endswith("\n"): blk += "\n"
            blk += "".join("- %s\n" % e for e in add)
            t = t[:m.start(1)] + blk + t[m.end(1):]
            open(YML, "w", encoding="utf-8").write(t)
            print("OK: apktool.yml doNotCompress += " + ", ".join(add))
        else:
            print("Ja aplicado (apktool.yml).")
    else:
        t = t.rstrip("\n") + "\ndoNotCompress:\n" + "".join("- %s\n" % e for e in need)
        open(YML, "w", encoding="utf-8").write(t)
        print("OK: apktool.yml doNotCompress criado: " + ", ".join(need))
else:
    print("AVISO: apktool.yml nao encontrado em " + YML)
