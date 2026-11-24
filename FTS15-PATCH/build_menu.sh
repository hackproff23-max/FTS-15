#!/data/data/com.termux/files/usr/bin/bash
# Monta o codigo dos escudos do menu (ARM 32 bits) com clang + lld. Sem python.
set -e
cd "$(dirname "$0")"
clang --target=armv7a-linux-androideabi24 -c menu_escudos.s -o menu.o
ld.lld -Ttext=0x1fb260 -e start $(cat menu_syms.txt) menu.o -o menu.elf
llvm-objcopy -O binary -j .text menu.elf menu.bin
A=$(stat -c %s menu.bin)
echo "menu.bin=$A (max 336)"
[ "$A" -le 336 ] || { echo "ERRO: codigo grande demais"; exit 1; }
echo "BUILD_OK"
