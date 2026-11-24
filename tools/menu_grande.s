.arm
.syntax unified
.fpu neon-vfpv4
.text
.global start
@ tabela por modo: rowh, yoff, scale, wofs, K, W, H, DY
@ flag [stat+0x61c]==0 -> "PROXIMA PARTIDA" (grande); !=0 -> desafio diario (pequeno)
start:

init:                       @ no lugar de "vmov.f32 s0,#-4" (0x2112e0): prepara tabela por modo
  vmov.f32 s0, #-4.0
  ldrb ip, [r4, #0x61c]
  cmp ip, #0
  adr ip, BIG
  adrne ip, SMALL
  vldr s31, [ip, #0]
  vldr s29, [ip, #4]
  vldr s27, [ip, #8]
  vldr s25, [ip, #12]
  bx lr
shift:                      @ no lugar de "vadd.f32 s0,s16,s0" (0x211300)
  vadd.f32 s0, s16, s0
  ldrb ip, [r4, #0x61c]
  cmp ip, #0
  adr ip, BIG
  adrne ip, SMALL
  vldr s14, [ip, #16]
  vadd.f32 s16, s16, s14
  bx lr
stub1:
  ldr ip, [r4, #0x600]
  b core
stub2:
  ldr ip, [r4, #0x604]
core:
  push {r5, r6, r8, r9, r10, lr}
  sub sp, sp, #0x100
  ldr r9, [sp, #0x118]
  mov r8, ip
  mov r5, r0
  mov r6, r1
  ands r10, r9, #0xff000000
  beq 9f
  mvn r0, #0xff000000
  orr r10, r10, r0
  add r0, sp, #8
  mov r1, r8
  mov r2, #0
  mvn r3, #0
  mvn ip, #1
  str ip, [sp]
  mov ip, #3
  str ip, [sp, #4]
  bl LOGO
  ldrb ip, [r4, #0x61c]
  cmp ip, #0
  adr ip, BIG
  adrne ip, SMALL
  vmov s0, r6
  vldr s1, [ip, #28]
  vadd.f32 s0, s0, s1
  vmov r2, s0
  ldr r3, [ip, #20]
  ldr ip, [ip, #24]
  str ip, [sp]
  str r10, [sp, #4]
  add r0, sp, #8
  mov r1, r5
  bl DRAW
9:
  add sp, sp, #0x100
  pop {r5, r6, r8, r9, r10, pc}
calcA:                      @ 0x20f5ac: s19 = s0 + altura da linha (preserva flags)
  push {r0}
  ldrb r0, [r7, #0x61c]
  and r0, r0, #1
  adr ip, RH
  add ip, ip, r0, lsl #2
  vldr s14, [ip]
  pop {r0}
  vadd.f32 s19, s0, s14
  bx lr
calcB:                      @ 0x20f5d8: s19 = s19 + altura da linha
  push {r0}
  ldrb r0, [r7, #0x61c]
  and r0, r0, #1
  adr ip, RH
  add ip, ip, r0, lsl #2
  vldr s14, [ip]
  pop {r0}
  vadd.f32 s19, s19, s14
  bx lr
.balign 4
RH:   .float 30.0, 13.0
BIG:   .float 30.0, 5.0, 2.0, -31.0, 17.0, 20.0, 27.5, 1.25
SMALL: .float 13.0, 2.0, 1.0, -29.0, 8.0, 11.0, 16.2, -1.6
