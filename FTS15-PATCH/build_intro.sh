#!/data/data/com.termux/files/usr/bin/bash
# Monta a tela de abertura (ARM 32 bits) com clang + lld. Sem python.
set -e
cd "$(dirname "$0")"
clang --target=armv7a-linux-androideabi24 -c intro.s -o intro.o
ld.lld -Ttext=0x27f104 -e start $(cat intro_syms.txt) intro.o -o intro.elf
llvm-objcopy -O binary -j .text intro.elf intro.bin
A=$(stat -c %s intro.bin)
echo "intro.bin=$A (max 2840)"
[ "$A" -le 2840 ] || { echo "ERRO: codigo grande demais"; exit 1; }
echo "BUILD_OK"
