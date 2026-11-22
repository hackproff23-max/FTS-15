#!/data/data/com.termux/files/usr/bin/bash
# Monta o patch dos botoes A/B/C (ARM 32 bits) com clang + lld. Sem python.
set -e
cd "$(dirname "$0")"
clang --target=armv7a-linux-androideabi24 -c botoes.s -o botoes.o
ld.lld -Ttext=0x1a6040 -e start --defsym=XMATH=0x142100 botoes.o -o botoes.elf
llvm-objcopy -O binary -j .text botoes.elf botoes.bin
A=$(stat -c %s botoes.bin)
echo "botoes.bin=$A (max 152)"
[ "$A" -le 152 ] || { echo "ERRO: codigo grande demais"; exit 1; }
echo "BUILD_OK"
