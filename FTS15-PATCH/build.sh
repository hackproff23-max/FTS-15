set -e
cd "$(dirname "$0")"
python3 gen.py
clang --target=armv7a-linux-androideabi24 -c card.s -o card.o
ld.lld -Ttext=0x283474 --section-start=.textB=0x283ecc -e start $(cat syms.txt) card.o -o card.elf
llvm-objcopy -O binary -j .text card.elf card.bin
llvm-objcopy -O binary -j .textB card.elf cardB.bin
llvm-nm card.elf | grep -E " (start|tramp_setup|tramp_goal|tramp_card|tramp_msg|tramp_own)$" > hooks.txt
