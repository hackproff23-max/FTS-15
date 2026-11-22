
.arm
.syntax unified
.fpu neon-vfpv4
.text
.global start
.global tramp_setup
.global tramp_goal
.global tramp_card
.global tramp_msg
.global tramp_own
.macro FADD rd, rs, imm
  vmov s0, \rs
  vldr s1, [r5, #\imm]
  vadd.f32 s0, s0, s1
  vmov \rd, s0
.endm
.macro GETG rd, off
  add \rd, r5, #\off
  ldr ip, [\rd]
  add \rd, \rd, ip
  ldr \rd, [\rd]
.endm
@ caixa: x(const) y=ytopo+dy w h cor(const)
.macro BOXC x, dy, w, h, col
  ldr r0, [sp, #432]
  FADD r1, r0, \dy
  ldr r0, =\x
  ldr r2, =\w
  ldr r3, =\h
  ldr ip, =\col
  bl boxcommon
.endm
.macro BOXS x, dy, w, h, slot
  ldr r0, [sp, #432]
  FADD r1, r0, \dy
  ldr r0, =\x
  ldr r2, =\w
  ldr r3, =\h
  ldr ip, [sp, #\slot]
  bl boxcommon
.endm
.macro BOXSW x, dy, h, slot
  ldr r0, [sp, #432]
  FADD r1, r0, \dy
  ldr r0, =\x
  ldr r2, [sp, #448]
  ldr r3, =\h
  ldr ip, [sp, #\slot]
  bl boxcommon
.endm
.macro BOXCW x, dy, h, col
  ldr r0, [sp, #432]
  FADD r1, r0, \dy
  ldr r0, =\x
  ldr r2, [sp, #448]
  ldr r3, =\h
  ldr ip, =\col
  bl boxcommon
.endm
.macro SCALEV slot
  ldr r0, [sp, #\slot]
  mov r1, r0
  bl S_SCALE
.endm
.macro CLAMP sx
  vcmp.f32 \sx, s15
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 \sx, s15
  vcmp.f32 \sx, s14
  vmrs APSR_nzcv, fpscr
  vmovlt.f32 \sx, s14
.endm
.macro ALPHACOL colslot, aslot
  ldr r0, [sp, #\colslot]
  ldr r1, [sp, #\aslot]
  bl ALPHA
  mov r1, #0
  bl SETCOL
.endm
@ texto em x = base + k*[slot]
.macro PRINTXV base, k, slot, dy, reg
  mov r0, #0
  bl ALIGN
  vldr s0, [sp, #\slot]
  vldr s1, [r5, #\k]
  vmul.f32 s0, s0, s1
  vldr s1, [r5, #\base]
  vadd.f32 s0, s0, s1
  ldr r1, [sp, #432]
  FADD r1, r1, \dy
  vmov r0, s0
  add r2, sp, #\reg
  bl PRINT
.endm
@ caixa redonda do icone: x=[IX]+xo, y=ytopo+dy, w, h, cor em [CLR], raio em [RS]
.macro BOXR xo, dy, w, h
  ldr r0, [sp, #432]
  FADD r1, r0, \dy
  ldr r0, [sp, #484]
  FADD r0, r0, \xo
  ldr r2, =\w
  ldr r3, =\h
  bl boxround
.endm
.macro SETRC col, rad
  ldr ip, =\col
  str ip, [sp, #488]
  ldr ip, =\rad
  str ip, [sp, #480]
.endm
.macro TXTCOL col
  ldr r0, =\col
  ldr r1, =0x3f800000
  bl ALPHA
  mov r1, #0
  bl SETCOL
.endm
.macro PRT base, k, slot, yslot, reg, colslot, aslot
  vldr s2, [r5, #\base]
  vldr s0, [sp, #\slot]
  vldr s1, [r5, #\k]
  vmla.f32 s2, s0, s1
  vmov r0, s2
  ldr r1, [sp, #\yslot]
  add r2, sp, #\reg
  ldr r3, [sp, #\colslot]
  ldr r4, [sp, #\aslot]
  bl dtxt
.endm
.macro SCALE v
  ldr r0, =\v
  mov r1, r0
  bl S_SCALE
.endm
@ texto: alinhamento, x(const) y=ytopo+dy ponteiro em r2
.macro PRINTAT align, x, dy, reg
  mov r0, #\align
  bl ALIGN
  ldr r0, [sp, #432]
  FADD r1, r0, \dy
  ldr r0, =\x
  add r2, sp, #\reg
  bl PRINT
.endm

start:
  b Lcode
.balign 4
Ldata:
Lg: .word S_G - .
Lt: .word S_T - .
Ly: .word S_Y - .
Lf_gol:  .asciz "%d GOL"
Lf_gols: .asciz "%d GOLS"
Lf_son:  .asciz "%d CHUTES NO GOL"
Lf_soff: .asciz "%d CHUTES FORA"
Lf_sav:  .asciz "%d DEFESAS"
Ls_yel:  .asciz "CARTAO AMARELO"
Ls_red:  .asciz "CARTAO VERMELHO"
Ls_inj:  .asciz "LESIONADO"
Ls_mom:  .asciz "MELHOR EM CAMPO"
Ls_og:   .asciz "GOL CONTRA"
Ls_gool: .asciz "GOOOOOOOLLLL"
Lp_num:  .asciz "%d"
.balign 4
.word 0xc29d0000
.word 0x412147ae
.word 0x428a0000
.word 0x410f5c29
.word 0x423c0000
.word 0x43110000
.word 0x438c0000
.word 0x3fe66666
.word 0x3fcccccd
.word 0x3d888889
.word 0x42340000
.word 0x42dc0000
.word 0x00000000
.word 0x41e33333
.word 0x41180000
.word 0x3fc00000
.word 0x41fb3333
.word 0x42280000
.word 0xc2200000
.word 0x41f00000
.word 0x42800000
.word 0x40b33333
.word 0x42380000
.word 0x42066666
.word 0x4204cccd
.word 0x3f800000
.word 0x4208cccd
.word 0x40866666
.word 0x4215999a
Lcode:
  push {r4-r11, lr}
  sub sp, sp, #4
  sub sp, sp, #592
  adr r5, Ldata
  mov r4, r0
  ldr r0, [r4, #8]
  sub r1, r0, #1
  cmp r1, #2
  bhi Lexit
  GETG r6, 0               @ &STAT_tPlayerHUDStats
  GETG r7, 4               @ &tGame
  GETG r4, 8               @ g (float): ponteiro
  ldr r4, [r4]
  FADD r4, r4, 156
  str r4, [sp, #432]
  ldr r8, [r6, #0x2bc]     @ time
  ldr r9, [r6, #0x2b8]     @ jogador
  movw r0, #0x10f8
  mla r1, r8, r0, r7
  movw r0, #0x392c
  ldr r1, [r1, r0]
  mov r0, #0x74
  mla r10, r9, r0, r1      @ r10 = jogador
  ldrb r11, [r6, #0x2b5]   @ evento: 0 outro, 1 gol, 2 amarelo, 3 vermelho, 4 lesao, 5 melhor, 6 gol contra
  movw r0, #0x8aab
  ldrb r0, [r7, r0]
  eor r4, r0, r8
  mov r0, r4
  bl TEAMCOL
  mov r1, #0xff000000
  ldr r2, =0x3e4ccccd
  bl MIX
  str r0, [sp, #436]
  mov r0, r4
  mvn r1, #0
  bl BW
  str r0, [sp, #440]
  @ ---- strings: numero, nome, texto de baixo
  ldrb r2, [r10, #0x55]
  add r1, r5, #(Lp_num - Ldata)
  add r0, sp, #0x90
  bl SPRINTF
  add r0, sp, #0x40
  add r1, r10, #0x24
  mov r2, #0x11
  bl CAP
  @ nome do time (so no gol)
  mov r0, #1
  str r0, [sp, #460]
  mov r0, #0
  add r1, sp, #496
  strh r0, [r1]
  cmp r11, #1
  bne Lnoteam
  movw r0, #0x10f8
  mla r0, r8, r0, r7
  movw r1, #0x2840
  ldr r0, [r0, r1]
  mvn r1, #0
  mov r2, #0
  bl TEAMNAME
  mov r1, r0
  add r0, sp, #496
  mov r2, #0x17
  bl CAP
  add r0, sp, #496
  bl STRLEN
  cmp r0, #1
  movlt r0, #1
  str r0, [sp, #460]
Lnoteam:
  cmp r11, #1
  addeq r1, r5, #(Ls_gool - Ldata)
  beq Lfmt0
  cmp r11, #2
  addeq r1, r5, #(Ls_yel - Ldata)
  beq Lfmt0
  cmp r11, #3
  addeq r1, r5, #(Ls_red - Ldata)
  beq Lfmt0
  cmp r11, #4
  addeq r1, r5, #(Ls_inj - Ldata)
  beq Lfmt0
  cmp r11, #5
  addeq r1, r5, #(Ls_mom - Ldata)
  beq Lfmt0
  cmp r11, #6
  addeq r1, r5, #(Ls_og - Ldata)
  beq Lfmt0
  ldr r2, [r6, #0x2c]      @ gols
  cmp r2, #0
  beq Lnogol
  add r1, r5, #(Lf_gol - Ldata)
  cmp r2, #1
  addhi r1, r5, #(Lf_gols - Ldata)
  b Lfmt
Lnogol:
  ldr r2, [r6, #0x24]
  add r1, r5, #(Lf_son - Ldata)
  cmp r2, #0
  bne Lfmt
  ldr r2, [r6, #0x20]
  add r1, r5, #(Lf_soff - Ldata)
  cmp r2, #0
  bne Lfmt
  ldr r2, [r6, #0x28]
  add r1, r5, #(Lf_sav - Ldata)
  cmp r2, #0
  bne Lfmt
  mov r0, #0
  strh r0, [sp, #0xc0]
  b Lshow
Lfmt0:
  mov r2, #0
Lfmt:
  add r0, sp, #0xc0
  bl SPRINTF
Lshow:
  @ ---- largura do cartao (cresce para caber nome / time / texto) e escala das letras
  add r0, sp, #0x40
  bl STRLEN
  cmp r0, #1
  movlt r0, #1
  mov r4, r0               @ n = letras do nome
  add r0, sp, #0xc0
  bl STRLEN
  cmp r0, #1
  movlt r0, #1
  mov r9, r0               @ m = letras do texto de baixo
  sub r0, r11, #1
  cmp r0, #2
  ldrls ip, =0x41880000
  movhi ip, #0
  vmov s8, ip              @ s8 = espaco do icone (gol/amarelo/vermelho)
  vmov s0, r4
  vcvt.f32.s32 s0, s0
  vmov s2, r9
  vcvt.f32.s32 s2, s2
  ldr r0, [sp, #460]
  vmov s9, r0
  vcvt.f32.s32 s9, s9
  vldr s1, [r5, #160]
  vmul.f32 s1, s0, s1
  vldr s4, [r5, #164]
  vadd.f32 s1, s1, s4      @ precisa p/ nome
  vldr s3, [r5, #168]
  vmul.f32 s3, s2, s3
  vldr s4, [r5, #172]
  vadd.f32 s3, s3, s4
  vadd.f32 s3, s3, s8      @ precisa p/ texto de baixo (+icone)
  vldr s10, [r5, #160]
  vmul.f32 s10, s9, s10
  vldr s4, [r5, #172]
  vadd.f32 s10, s10, s4    @ precisa p/ nome do time
  vldr s5, [r5, #176]              @ s5 = largura W
  vcmp.f32 s1, s5
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s5, s1
  vcmp.f32 s3, s5
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s5, s3
  vcmp.f32 s10, s5
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s5, s10
  vldr s6, [r5, #180]
  vcmp.f32 s5, s6
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s5, s6
  vstr s5, [sp, #448]
  vldr s12, [r5, #184]
  vstr s12, [sp, #452]    @ escalas fixas (o cartao cresce para caber o texto)
  vstr s12, [sp, #464]
  vldr s7, [r5, #188]
  vstr s7, [sp, #456]
  @ ---- animacao do gol (contador de frames em STAT+0x2b4; SetupPlayerStats zera)
  mov ip, #0
  vmov s14, ip
  vmov.f32 s15, #1.0
  vstr s15, [sp, #468]
  vstr s14, [sp, #472]
  vstr s14, [sp, #476]
  vstr s15, [sp, #492]
  vstr s15, [sp, #552]
  cmp r11, #1
  bne Lnoanim
  ldrb r0, [r6, #0x2b4]
  vmov s0, r0
  vcvt.f32.s32 s0, s0
  cmp r0, #255
  addlo r1, r0, #1
  strblo r1, [r6, #0x2b4]
  vldr s3, [r5, #192]
  vldr s1, [r5, #196]
  vsub.f32 s2, s0, s1
  vmul.f32 s2, s2, s3
  CLAMP s2                 @ p: saida do nome (0..1)
  vldr s1, [r5, #200]
  vsub.f32 s4, s0, s1
  vmul.f32 s4, s4, s3
  CLAMP s4                 @ q: entrada do time (0..1)
  vsub.f32 s5, s15, s2
  vsub.f32 s6, s15, s4
  vstr s2, [sp, #468]
  vstr s4, [sp, #472]
  vstr s5, [sp, #476]
  vstr s6, [sp, #492]
  vmul.f32 s7, s2, s6
  vstr s7, [sp, #552]     @ alpha do GOOOL = p*(1-q)
Lnoanim:
  @ ---- caixa do cartao
  BOXSW 0x00000000, 204, 0x424c0000, 436
  BOXCW 0x00000000, 208, 0x41b4cccd, 0xffe8e8e8
  @ ---- escudo
  movw r0, #0x10f8
  mla r0, r8, r0, r7
  movw r1, #0x2840
  ldr r1, [r0, r1]
  add r0, sp, #0x120
  mov r2, #0
  mvn r3, #0
  mvn ip, #1
  str ip, [sp]
  mov ip, #3
  str ip, [sp, #4]
  bl LOGO
  ldr r0, [sp, #432]
  FADD r2, r0, 212
  mvn r1, #0
  str r1, [sp, #4]
  ldr r1, =0x42100000
  str r1, [sp]
  mov r3, r1
  ldr r1, =0x4039999a
  add r0, sp, #0x120
  bl DRAW
  @ ---- posicoes/cor dos textos
  ldr r0, [sp, #432]
  FADD r1, r0, 216
  str r1, [sp, #556]
  FADD r1, r0, 220
  str r1, [sp, #560]
  ldr ip, =0xff303030
  str ip, [sp, #564]
  mov r0, #2
  bl SETFONT
  @ ---- faixa de cima: time (sai) -> numero + nome (entram)
  SCALEV 464
  PRT 224, 228, 468, 556, 496, 440, 476
  SCALEV 452
  PRT 224, 232, 476, 556, 0x90, 440, 468
  PRT 236, 232, 476, 556, 0x40, 440, 468
  @ ---- faixa branca: nome (sai) -> GOOOL (entra/sai) -> time (entra)
  SCALEV 456
  PRT 224, 228, 468, 560, 0x40, 564, 476
  vldr s2, [r5, #224]
  vldr s0, [sp, #476]
  vldr s1, [r5, #232]
  vmla.f32 s2, s0, s1
  vldr s0, [sp, #472]
  vldr s1, [r5, #228]
  vmla.f32 s2, s0, s1
  vmov r0, s2
  ldr r1, [sp, #560]
  add r2, sp, #0xc0
  ldr r3, [sp, #564]
  ldr r4, [sp, #552]
  bl dtxt
  PRT 224, 232, 492, 560, 496, 564, 472
  @ ---- icone ao lado do texto (bola no gol, cartao amarelo/vermelho)
  sub r0, r11, #1
  cmp r0, #2
  bhi Lend
  vldr s0, [sp, #552]
  vmov.f32 s1, #0.5
  vcmp.f32 s0, s1
  vmrs APSR_nzcv, fpscr
  blt Lend
  vmov s0, r9
  vcvt.f32.s32 s0, s0
  vldr s1, [sp, #456]
  vmul.f32 s0, s0, s1
  vldr s1, [r5, #240]
  vmul.f32 s0, s0, s1
  vldr s1, [r5, #244]
  vadd.f32 s0, s0, s1
  vstr s0, [sp, #484]
  cmp r11, #1
  beq Lball
  cmp r11, #2
  ldreq ip, =0xfff2d21a
  ldrne ip, =0xffe01818
  str ip, [sp, #488]
  ldr ip, =0x3fc00000
  str ip, [sp, #480]
  BOXR 204, 248, 0x41100000, 0x41466666
  b Lend
Lball:
  SETRC 0xff000000, 0x40d00000
  BOXR 204, 252, 0x41500000, 0x41500000
  SETRC 0xffffffff, 0x40b00000
  BOXR 256, 260, 0x41300000, 0x41300000
  SETRC 0xff000000, 0x40133333
  BOXR 264, 268, 0x40933333, 0x40933333
Lend:
  mov r0, #1
  bl SETFONT               @ restaura fonte/escala padrao (como o original)
Lexit:
  add sp, sp, #592
  add sp, sp, #4
  pop {r4-r11, pc}

boxround:                  @ r0..r3 = x,y,w,h ; cor em [CLR], raio em [RS]
  ldr ip, [sp, #488]
  str ip, [sp]
  mov ip, #1
  str ip, [sp, #4]
  ldr ip, [sp, #480]
  str ip, [sp, #8]
  mov ip, #15
  str ip, [sp, #12]
  ldr ip, =0x3f800000
  str ip, [sp, #16]
  mov ip, #0
  str ip, [sp, #20]
  ldr ip, =0xff000000
  str ip, [sp, #24]
  b RB

dtxt:                      @ r0=x r1=y r2=texto r3=cor r4=alpha
  push {r0-r2, lr}
  mov r0, r3
  mov r1, r4
  bl ALPHA
  mov r1, #0
  bl SETCOL
  mov r0, #0
  bl ALIGN
  pop {r0-r2, lr}
  b PRINT

boxcommon:                 @ r0..r3 = x,y,w,h ; ip = cor
  str ip, [sp]
  mov ip, #1
  str ip, [sp, #4]
  mov ip, #0
  str ip, [sp, #8]
  mov ip, #15
  str ip, [sp, #12]
  ldr ip, =0x3f800000
  str ip, [sp, #16]
  mov ip, #0
  str ip, [sp, #20]
  ldr ip, =0xff000000
  str ip, [sp, #24]
  b RB

.ltorg
.balign 4
TgA: .word S_G - .

tramp_setup:               @ substitui bl SetupPlayerStats (comemoracao/faixa)
  push {r4, lr}
  bl S_SETUP
  adr r4, TgA
  ldr r0, [r4]
  add r4, r4, r0
  ldr r4, [r4]
  ldrb r0, [r4, #0x2b6]
  strb r0, [r4, #0x2b5]    @ atual = pendente
  mov r0, #0
  strb r0, [r4, #0x2b6]    @ pendente = outro
  pop {r4, pc}

tramp_goal:                @ substitui bl FTSstring no ramo de GOL (nao contra)
  mov r3, #0x2b6           @ pendente = gol
  b Lmarca
tramp_own:                 @ substitui bl FTSstring(IG_OWNGOAL): marca gol contra
  mov r3, #0x2b7
Lmarca:
  push {r0, lr}
  adr r1, TgA
  ldr r2, [r1]
  add r1, r1, r2
  ldr r1, [r1]
  mov r2, #1
  strb r2, [r1, r3]
  pop {r0, lr}
  b S_FTSSTR

.ltorg

.section .textB,"ax"
.balign 4
Td:
Tg: .word S_G - .
Tt: .word S_T - .
Th: .word S_H - .
tramp_card:                @ substitui bl GameMessageSet nos cartoes (r0 = 9 amarelo, 10 vermelho)
  push {r4-r6, lr}
  mov r4, r0
  adr r0, Tt
  ldr r1, [r0]
  add r0, r0, r1
  ldr r5, [r0]             @ &tGame
  movw r1, #0x8ad2
  ldrh r2, [r5, r1]
  uxtb r1, r2              @ time
  lsr r2, r2, #8           @ jogador
  adr r0, Th
  ldr r3, [r0]
  add r0, r0, r3
  ldr r0, [r0]
  ldr r0, [r0, #0x30]      @ this do componente
  bl S_SETUP
  adr r6, Tg
  ldr r0, [r6]
  add r6, r6, r0
  ldr r6, [r6]
  sub r4, r4, #7           @ 9 -> 2 (amarelo), 10 -> 3 (vermelho)
  strb r4, [r6, #0x2b5]
  pop {r4-r6, pc}

tramp_msg:                 @ lesao / melhor em campo: r0=id r1=texto r2=&nome(+0x24) r3=time
  push {r4-r8, lr}
  mov r4, r0
  mov r6, r3
  mov r7, r2
  adr r0, Tt
  ldr r1, [r0]
  add r0, r0, r1
  ldr r5, [r0]             @ &tGame
  movw r1, #0x10f8
  mla r1, r6, r1, r5
  movw r2, #0x392c
  ldr r1, [r1, r2]         @ vetor de jogadores do time
  sub r0, r7, #0x24
  sub r0, r0, r1
  mov r1, #0x74
  bl S_IDIV
  mov r8, r0               @ indice do jogador
  adr r0, Th
  ldr r3, [r0]
  add r0, r0, r3
  ldr r0, [r0]
  ldr r0, [r0, #0x30]      @ this
  mov r1, r6
  mov r2, r8
  bl S_SETUP
  adr r6, Tg
  ldr r0, [r6]
  add r6, r6, r0
  ldr r6, [r6]
  cmp r4, #15
  moveq r0, #4             @ lesao
  beq Lset
  cmp r4, #11
  movne r0, #5             @ melhor em campo
  bne Lset
  ldrb r0, [r6, #0x2b7]    @ mensagem de gol: gol contra?
  mov r1, #0
  strb r1, [r6, #0x2b7]
  cmp r0, #0
  moveq r0, #1             @ gol
  movne r0, #6             @ gol contra
Lset:
  strb r0, [r6, #0x2b5]
  pop {r4-r8, pc}
.ltorg
