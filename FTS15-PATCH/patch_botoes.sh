#!/data/data/com.termux/files/usr/bin/bash
# Grava o patch dos botoes no libFTS15.so (sem python). Uso: bash patch_botoes.sh [caminho_do_so]
set -e
cd "$(dirname "$0")"
SO="${1:-../FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so}"
[ -f "$SO" ] || { echo "ERRO: nao achei $SO"; exit 1; }
[ -f botoes.bin ] || { echo "ERRO: rode build_botoes.sh antes"; exit 1; }
ADDR=$((0x1a6040)); END=$((0x1a60d8))
SZ=$(stat -c %s botoes.bin)
[ "$SZ" -le $((END-ADDR)) ] || { echo "ERRO: codigo grande demais"; exit 1; }
first=$(od -An -tx1 -j $ADDR -N4 "$SO" | tr -d ' \n')
case "$first" in 052ab3ee|??????ea) ;; *) echo "ERRO: bytes inesperados em 0x1a6040 ($first). Nada foi alterado."; exit 1;; esac
after=$(od -An -tx1 -j $END -N4 "$SO" | tr -d ' \n')
[ "$after" = "220a9fed" ] || { echo "ERRO: bytes inesperados em 0x1a60d8 ($after). Nada foi alterado."; exit 1; }
[ -f "$SO.orig" ] || cp "$SO" "$SO.orig"
dd if=botoes.bin of="$SO" bs=1 seek=$ADDR conv=notrunc status=none
N=$(( (END-ADDR-SZ)/4 ))
i=0
while [ $i -lt $N ]; do printf '\x00\xf0\x20\xe3'; i=$((i+1)); done | dd of="$SO" bs=1 seek=$((ADDR+SZ)) conv=notrunc status=none
echo "OK: botoes A/B/C gravados em $SO"
