.arm
.syntax unified
.fpu neon-vfpv4
.text
.global stub2n
@ Substitui "bl stub2" em 0x211530 (escudo do time 2 em CFEStatsBox::RenderFixture).
@ Entrada: r0=x (s16), r1=y, r2, r3, [sp]=cor ; s16/s24/s27 vivos. lr = retorno.
@ Modo pequeno (s27 != 2.0) E layout empilhado (s24 == s16): escudo vai para a mesma
@ coluna do escudo do time 1 (x = s16 - (K+4)), sem cobrir o nome. Senao: igual a antes.
stub2n:
  vmov r12, s27
  cmp r12, #0x40000000
  beq Lorig                 @ modo grande (menu principal): nao mexe
  vcmp.f32 s24, s16
  vmrs APSR_nzcv, fpscr
  bne Lorig                 @ linha lado a lado: nao mexe
  adr r12, Lk
  ldr r3, [r12]
  add r12, r12, r3
  vldr s1, [r12]            @ K da tabela SMALL (8.0)
  vmov s0, r0
  vsub.f32 s0, s0, s1
  vldr s1, Lquatro
  vsub.f32 s0, s0, s1
  vmov r0, s0
Lorig:
  b STUB2ORIG
.balign 4
Lquatro: .float 4.0
Lk: .word SMALLK - .
