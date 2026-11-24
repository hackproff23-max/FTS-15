#!/data/data/com.termux/files/usr/bin/bash
# Grava os escudos do menu no libFTS15.so (sem python).
# Uso: bash patch_menu.sh [caminho_do_so]      (pode rodar de novo: detecta se ja aplicou)
set -e
cd "$(dirname "$0")"
SO="${1:-../FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so}"
[ -f "$SO" ] || { echo "ERRO: nao achei $SO"; exit 1; }
[ -f menu.bin ] || { echo "ERRO: rode build_menu.sh antes"; exit 1; }
CAVE=$((0x1fb260)); LIM=$((0x1fb3b0))
SHIFT=$CAVE; STUB1=$((CAVE+0x14)); STUB2=$((CAVE+0x1c))
SZ=$(stat -c %s menu.bin)
[ $((CAVE+SZ)) -le $LIM ] || { echo "ERRO: codigo grande demais"; exit 1; }

hex() { od -An -v -tx1 -j "$1" -N4 "$SO" | tr -d ' \n'; }          # 4 bytes na ordem do arquivo
le()  { printf '%02x%02x%02x%02x' $(($1&255)) $((($1>>8)&255)) $((($1>>16)&255)) $((($1>>24)&255)); }
blw() { echo $(( 0xEB000000 | ((($2 - ($1 + 8)) >> 2) & 0xFFFFFF) )); }   # BL de $1 para $2
w32() { printf "$(printf '\\x%02x\\x%02x\\x%02x\\x%02x' $(($2&255)) $((($2>>8)&255)) $((($2>>16)&255)) $((($2>>24)&255)))" | dd of="$SO" bs=1 seek=$(($1)) conv=notrunc status=none; }

# confere o proprio menu.bin (layout dos stubs)
chk() { [ "$(od -An -v -tx1 -j "$1" -N4 menu.bin | tr -d ' \n')" = "$2" ] || { echo "ERRO: menu.bin com layout inesperado em +$1"; exit 1; }; }
chk $((STUB1-CAVE)) 00c694e5
chk $((STUB2-CAVE)) 04c694e5

# ja aplicado?
if [ "$(hex 0x211300)" = "$(le $(blw $((0x211300)) $SHIFT))" ]; then
  echo "Os escudos do menu JA estao aplicados em $SO. Nada feito."; exit 0
fi
# bytes originais esperados
RECT=$((0x140b7c))
[ "$(hex 0x211300)" = "000a38ee" ] || { echo "ERRO: bytes inesperados em 0x211300. Nada foi alterado."; exit 1; }
[ "$(hex 0x211368)" = "0a0abaee" ] || { echo "ERRO: bytes inesperados em 0x211368. Nada foi alterado."; exit 1; }
[ "$(hex 0x211340)" = "$(le $(blw $((0x211340)) $RECT))" ] || { echo "ERRO: bytes inesperados em 0x211340. Nada foi alterado."; exit 1; }
[ "$(hex 0x211530)" = "$(le $(blw $((0x211530)) $RECT))" ] || { echo "ERRO: bytes inesperados em 0x211530. Nada foi alterado."; exit 1; }
# area livre

[ -f "$SO.orig_menu" ] || cp "$SO" "$SO.orig_menu"
dd if=menu.bin of="$SO" bs=1 seek=$CAVE conv=notrunc status=none
w32 0x211300 $(blw $((0x211300)) $SHIFT)
w32 0x211340 $(blw $((0x211340)) $STUB1)
w32 0x211530 $(blw $((0x211530)) $STUB2)
w32 0x211368 $((0xEEBB0A0D))
echo "OK: escudos do menu gravados em $SO (backup: $SO.orig_menu)"
