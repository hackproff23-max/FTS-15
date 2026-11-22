#!/data/data/com.termux/files/usr/bin/bash
# Grava o cartao no libFTS15.so (sem python). Uso: bash patch.sh [caminho_do_so]
set -e
cd "$(dirname "$0")"
SO="${1:-../FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so}"
[ -f "$SO" ] || { echo "ERRO: nao achei $SO"; exit 1; }
[ -f card.bin ] && [ -f cardB.bin ] && [ -f hooks.txt ] || { echo "ERRO: rode build.sh antes"; exit 1; }
RENDER=$((0x283474)); REGB=$((0x283ecc))
[ "$(stat -c %s card.bin)" -le 2484 ] && [ "$(stat -c %s cardB.bin)" -le 292 ] || { echo "ERRO: codigo grande demais"; exit 1; }
rd() { od -An -tx1 -j "$1" -N4 "$SO" | tr -d ' \n'; }
first=$(rd $RENDER)
case "$first" in f04f2de9|??????ea) ;; *) echo "ERRO: bytes inesperados em 0x283474. Nada foi alterado."; exit 1;; esac
sym() { awk -v n="$1" '$3==n{print $1}' hooks.txt; }
# endereco_do_bl  bytes_originais  simbolo
HOOKS="36c1c8:255ff7eb:tramp_setup 36c2d8:0265f7eb:tramp_card 36c34c:fe4bf7eb:tramp_goal 36c018:b265f7eb:tramp_msg 36c6a0:1064f7eb:tramp_msg 36c280:314cf7eb:tramp_own 36c370:dc64f7eb:tramp_msg"
for h in $HOOKS; do
  a=$((0x${h%%:*})); r=${h#*:}; orig=${r%%:*}; s=${r#*:}
  cur=$(rd $a)
  case "$cur" in "$orig"|??????eb) ;; *) printf 'ERRO: bytes inesperados em 0x%x. Nada foi alterado.\n' $a; exit 1;; esac
  [ -n "$(sym $s)" ] || { echo "ERRO: simbolo $s ausente em hooks.txt"; exit 1; }
done
[ -f "$SO.orig" ] || cp "$SO" "$SO.orig"
dd if=card.bin  of="$SO" bs=1 seek=$RENDER conv=notrunc status=none
dd if=cardB.bin of="$SO" bs=1 seek=$REGB  conv=notrunc status=none
for h in $HOOKS; do
  a=$((0x${h%%:*})); r=${h#*:}; s=${r#*:}
  t=$((0x$(sym $s)))
  w=$(( 0xEB000000 | (((t - (a + 8)) >> 2) & 0xFFFFFF) ))
  printf "$(printf '\\x%02x\\x%02x\\x%02x\\x%02x' $((w&255)) $(((w>>8)&255)) $(((w>>16)&255)) $(((w>>24)&255)))" | dd of="$SO" bs=1 seek=$a conv=notrunc status=none
done
echo "OK: cartao gravado em $SO"
