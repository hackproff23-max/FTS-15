#!/data/data/com.termux/files/usr/bin/bash
# Monta o cartao (ARM 32 bits) com clang + lld. Sem python.
set -e
cd "$(dirname "$0")"
clang --target=armv7a-linux-androideabi24 -c card.s -o card.o
ld.lld -Ttext=0x283474 --section-start=.textB=0x283ecc -e start $(cat syms.txt) card.o -o card.elf
llvm-objcopy -O binary -j .text card.elf card.bin
llvm-objcopy -O binary -j .textB card.elf cardB.bin
llvm-nm card.elf | grep -E " (start|tramp_setup|tramp_goal|tramp_card|tramp_msg|tramp_own)$" > hooks.txt
A=$(stat -c %s card.bin); B=$(stat -c %s cardB.bin)
echo "card.bin=$A (max 2484)  cardB.bin=$B (max 292)"
[ "$A" -le 2484 ] && [ "$B" -le 292 ] || { echo "ERRO: codigo grande demais"; exit 1; }
echo "BUILD_OK"
