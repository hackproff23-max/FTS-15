#!/data/data/com.termux/files/usr/bin/bash
# Monta o contorno do placar (ARM 32 bits). Sem python.
set -e
cd "$(dirname "$0")"
clang --target=armv7a-linux-androideabi24 -c placar.s -o placar.o
ld.lld -Ttext=0x285cf0 -e tramp_score $(cat syms.txt) placar.o -o placar.elf
llvm-objcopy -O binary -j .text placar.elf placar.bin
A=$(stat -c %s placar.bin)
echo "placar.bin=$A bytes (max 196)"
[ "$A" -le 196 ] || { echo "ERRO: codigo grande demais"; exit 1; }
echo "BUILD_OK"
