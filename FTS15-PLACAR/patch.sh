#!/data/data/com.termux/files/usr/bin/bash
# Grava o contorno no libFTS15.so (sem python). Uso: bash patch.sh [caminho_do_so]
set -e
cd "$(dirname "$0")"
SO="${1:-../FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so}"
[ -f "$SO" ] || { echo "ERRO: nao achei $SO"; exit 1; }
[ -f placar.bin ] || { echo "ERRO: rode build.sh antes"; exit 1; }
T=$((0x285cf0)); HOOK=$((0x2854f0))
[ "$(stat -c %s placar.bin)" -le 196 ] || { echo "ERRO: codigo grande demais"; exit 1; }
rd() { od -An -tx1 -j "$1" -N4 "$SO" | tr -d ' \n'; }
h=$(rd $HOOK)
case "$h" in 68069fe5|??????eb) ;; *) echo "ERRO: bytes inesperados em 0x2854f0 ($h). Nada foi alterado."; exit 1;; esac
if [ "$h" = "68069fe5" ]; then
  # primeira aplicacao: a area precisa estar zerada
  n=$(dd if="$SO" bs=1 skip=$T count=196 status=none | od -An -v -tx1 | tr -d ' \n0')
  [ -z "$n" ] || { echo "ERRO: area livre 0x285cf0 nao esta zerada. Nada foi alterado."; exit 1; }
fi
[ -f "$SO.orig" ] || cp "$SO" "$SO.orig"
dd if=placar.bin of="$SO" bs=1 seek=$T conv=notrunc status=none
w=$(( 0xEB000000 | (((T - (HOOK + 8)) >> 2) & 0xFFFFFF) ))
printf "$(printf '\\x%02x\\x%02x\\x%02x\\x%02x' $((w&255)) $(((w>>8)&255)) $(((w>>16)&255)) $(((w>>24)&255)))" | dd of="$SO" bs=1 seek=$HOOK conv=notrunc status=none
echo "OK: contorno do placar gravado em $SO"
