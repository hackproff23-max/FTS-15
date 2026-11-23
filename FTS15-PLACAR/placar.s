@ Contorno de 1px com degrade (cinza -> cinza escuro) no placar
@ Gancho: CHudCompScore::Render em 0x2854f0 (ldr r0,=-1) vira "bl tramp_score"
@ Entrada: s16 = Y do placar, r7 = alpha (fade) do componente
.syntax unified
.arm
.text
.globl tramp_score
tramp_score:
  push {r4, r5, r6, lr}
  sub sp, sp, #32
  ldr r0, =0xffa8a8a8        @ cinza (cima)
  mov r1, r7
  bl ALPHA
  mov r4, r0
  ldr r0, =0xff3a3a3a        @ cinza escuro (baixo)
  mov r1, r7
  bl ALPHA
  mov r5, r0
  str r4, [sp]               @ cantos: TL, TR = claro ; BL, BR = escuro
  str r4, [sp, #4]
  str r5, [sp, #8]
  str r5, [sp, #12]
  mov r0, #0
  str r0, [sp, #16]
  ldr r0, =0xc97423f0
  str r0, [sp, #20]
  str r0, [sp, #24]
  ldr r0, =0x41c00000        @ x = 24
  vmov r1, s16               @ y = Y
  ldr r2, =0x428c0000        @ w = 70
  ldr r3, =0x42440000        @ h = 49
  bl UNFRECT4
  add sp, sp, #32
  mvn r0, #0                 @ instrucao original substituida (r0 = -1)
  pop {r4, r5, r6, pc}
.ltorg
