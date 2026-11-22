set -e
cd "$(dirname "$0")"
python3 gen.py
clang --target=armv7a-linux-androideabi24 -c card.s -o card.o
ld.lld -Ttext=0x283474 --oformat=binary -e start $(cat syms.txt) card.o -o card.bin
ld.lld -Ttext=0x283474 -e start $(cat syms.txt) card.o -o card.elf
llvm-nm card.elf | grep -E " (start|tramp_setup|tramp_goal|tramp_card|tramp_msg)$" > hooks.txt
