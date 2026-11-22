#!/data/data/com.termux/files/usr/bin/bash
# Grava a tela de abertura no libFTS15.so (sem python). Uso: bash patch_intro.sh [caminho_do_so]
set -e
cd "$(dirname "$0")"
SO="${1:-../FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so}"
[ -f "$SO" ] || { echo "ERRO: nao achei $SO"; exit 1; }
[ -f intro.bin ] || { echo "ERRO: rode build_intro.sh antes"; exit 1; }
ADDR=$((0x27f104))
[ "$(stat -c %s intro.bin)" -le 2840 ] || { echo "ERRO: codigo grande demais"; exit 1; }
first=$(od -An -tx1 -j $ADDR -N4 "$SO" | tr -d ' \n')
case "$first" in f04f2de9|??????ea) ;; *) echo "ERRO: bytes inesperados em 0x27f104 ($first). Nada foi alterado."; exit 1;; esac
[ -f "$SO.orig" ] || cp "$SO" "$SO.orig"
dd if=intro.bin of="$SO" bs=1 seek=$ADDR conv=notrunc status=none
echo "OK: tela de abertura gravada em $SO"
