#!/usr/bin/env python3
# FTS15 - lista de musicas automatica.
# Le todos os arquivos de musica em assets/data/audio e grava a lista na libFTS15.so.
# Pode rodar quantas vezes quiser (a cada musica nova).  Maximo: 12 musicas.
import os, sys, struct, string

ROOT = sys.argv[1] if len(sys.argv) > 1 else "FTS15-RECURSOS"
LIB = os.path.join(ROOT, "lib/armeabi-v7a/libFTS15.so")
AUDIO = os.path.join(ROOT, "assets/data/audio")
MAXN = 12
EXT = (".m4a", ".mp3", ".ogg", ".aac")
ANTHEM = "classical-beethoven-ode-to-joy_epic"   # fica fora da lista (hino)

FILES, ARTS, TRKS, ANT = 0x623b78, 0x624178, 0x624778, 0x624d78
STRIDE = 128
# (endereco, original, novo)
CODE = [
    (0x1915cc, 0xe3a00006, None),   # mov r0,#N (preenchido abaixo)
    (0x1915d8, 0xe3a00018, None),   # mov r0,#N*4
    (0x1915f0, 0xe3a00018, None),
    (0x19160c, 0xe3a00018, None),
    (0x1916d8, 0xe2866c01, 0xe2866080),
    (0x1916dc, 0xe2855c01, 0xe2855080),
    (0x1916e0, 0xe2844c01, 0xe2844080),
]

songs = sorted(f for f in os.listdir(AUDIO)
               if f.lower().endswith(EXT) and not f.lower().startswith(ANTHEM))
if not songs:
    sys.exit("ERRO: nenhuma musica em " + AUDIO)
if len(songs) > MAXN:
    print("AVISO: %d musicas, usando so as %d primeiras (ordem alfabetica)." % (len(songs), MAXN))
    songs = songs[:MAXN]
n = len(songs)

d = bytearray(open(LIB, "rb").read())
w = lambda a: struct.unpack("<I", d[a:a+4])[0]
for a, o, nw in CODE:
    if w(a) not in (o, nw) and not (nw is None and (w(a) & 0xffffff00) == 0xe3a00000):
        sys.exit("ERRO: bytes inesperados em 0x%x (lib diferente?). Nada foi alterado." % a)
for (a, o, nw), val in zip(CODE, (n, n*4, n*4, n*4)):
    if nw is None:
        struct.pack_into("<I", d, a, 0xe3a00000 | val)
    else:
        struct.pack_into("<I", d, a, nw)

def put(base, i, s):
    b = s.encode("utf-8")
    if len(b) >= STRIDE:
        sys.exit("ERRO: nome muito grande: " + s)
    d[base+i*STRIDE:base+(i+1)*STRIDE] = b + b"\0"*(STRIDE-len(b))

for base in (FILES, ARTS, TRKS):
    d[base:base+0x600] = b"\0"*0x600
for i, f in enumerate(songs):
    stem = os.path.splitext(f)[0]
    art, _, trk = stem.partition("-")
    if not trk:
        art, trk = stem, ""
    put(FILES, i, "PKG:/data/audio/" + f)
    put(ARTS, i, string.capwords(art.strip()))
    put(TRKS, i, string.capwords(trk.strip()))

# hino: usa o nome real do arquivo (maiusculas/minusculas)
for f in os.listdir(AUDIO):
    if f.lower().startswith(ANTHEM) and f.lower().endswith(EXT):
        s = ("PKG:/data/audio/" + f).encode()
        d[ANT:ANT+0x100] = s + b"\0"*(0x100-len(s))
        print("hino:", f)

open(LIB, "wb").write(d)
print("OK: %d musicas gravadas na lib:" % n)
for f in songs:
    print("  -", f)
