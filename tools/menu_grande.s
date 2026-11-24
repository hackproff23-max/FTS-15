.arm
.syntax unified
.fpu neon-vfpv4
.text
.global start
@ tabela por modo: rowh, yoff, scale, wofs, K, W, H, DY
@ flag [stat+0x61c]==0 -> "PROXIMA PARTIDA" (grande); !=0 -> desafio diario (pequeno)
start:

init:                       @ no lugar de "vmov.f32 s0,#-4" (0x2112e0): escolhe modo e prepara s25..s31
  vmov.f32 s0, #-4.0
  ldrb ip, [r4, #0x61c]
  cmp ip, #0
  adr ip, BIG
  adrne ip, SMALL
  ldr r0, [r9, #0xb8]
  ldr r1, =0x43340000          @ 180.0: so a caixa larga do menu principal e "grande"
  cmp r0, r1
  adrls ip, SMALL
  vldr s31, [ip, #0]
  vldr s29, [ip, #4]
  vldr s27, [ip, #8]
  vldr s25, [ip, #12]
  bx lr
shift:                      @ no lugar de "vadd.f32 s0,s16,s0" (0x211300)
  vadd.f32 s0, s16, s0
  vmov ip, s27
  cmp ip, #0x40000000
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
  vmov ip, s27
  cmp ip, #0x40000000
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
  push {lr}
  bl rh
  pop {lr}
  vadd.f32 s19, s0, s14
  bx lr
calcB:                      @ 0x20f5d8: s19 = s19 + altura da linha
  push {lr}
  bl rh
  pop {lr}
  vadd.f32 s19, s19, s14
  bx lr
rh:                         @ s14 = altura da linha (30 grande / 13 pequeno), preserva APSR
  push {r0, r1, r2}
  mrs r1, APSR
  mov r2, #0
  ldrb r0, [r7, #0x61c]
  cmp r0, #0
  movne r2, #1
  ldr ip, [r9, #0xb8]
  ldr r0, =0x43340000
  cmp ip, r0
  movls r2, #1
  adr ip, RH
  add ip, ip, r2, lsl #2
  vldr s14, [ip]
  msr APSR_nzcvq, r1
  pop {r0, r1, r2}
  bx lr
scl:                        @ no lugar de "bl FESU_SetFontScaleForWidth": no modo grande, escala Y = escala X
  push {r5, lr}
  bl FWIDTH
  vmov r1, s27
  cmp r1, #0x40000000
  bne 1f
  mov r1, r0
  bl SETSCALE
1:
  pop {r5, pc}
.ltorg
.balign 4
RH:   .float 30.0, 13.0
BIG:   .float 30.0, 5.0, 2.0, -31.0, 17.0, 20.0, 27.5, 1.25
SMALL: .float 13.0, 2.0, 1.0, -29.0, 8.0, 11.0, 16.2, -1.6
