#!/bin/sh
L=~/FTS-15/FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so
cp "$L" "$L.bak_1px" && python3 "$(dirname "$0")/patch_contorno2.py" "$L.bak_1px" "$L" 0.45
