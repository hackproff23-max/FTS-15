.arm
.syntax unified
.fpu neon-vfpv4
.text
.global start

@ ======================================================================
@ Tela de abertura da partida (CHudCompIntroPreview::Render, 0x27f104)
@ Layout novo: logo da liga em cima, UMA barra dividida nas cores dos
@ dois times, escudo + nome em cada ponta.  Sem faixa branca/clima/publico.
@
@ AJUSTES: mude os numeros da tabela abaixo (K_...) e rode build+patch.
@ Unidades virtuais do jogo: tela 480 x 270; G = referencia vertical.
@ ======================================================================

.equ L_W,    32
.equ L_G,    36
.equ L_P,    40
.equ L_A,    44
.equ L_GR,   48
.equ L_T,    52
.equ L_U3,   56
.equ L_CH,   60
.equ L_CA,   64
.equ L_CTXH, 68
.equ L_CTXA, 72
.equ L_CX,   76
.equ L_HG,   80
.equ L_YB,   84
.equ L_TMP,  88
.equ L_SC,   92
.equ L_NX,   96
.equ O_IMG,  112
.equ O_NH,   336
.equ O_NA,   848

.macro GETG rd, lab
  add \rd, r5, #(\lab - Ldata)
  ldr ip, [\rd]
  add \rd, \rd, ip
  ldr \rd, [\rd]
.endm
.macro SPADDR rd, off
  movw ip, #\off
  add \rd, sp, ip
.endm
.macro CL01 sx
  vmov.f32 s15, #1.0
  mov ip, #0
  vmov s14, ip
  vcmp.f32 \sx, s15
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 \sx, s15
  vcmp.f32 \sx, s14
  vmrs APSR_nzcv, fpscr
  vmovlt.f32 \sx, s14
.endm
.macro TL sd, k
  ldr ip, [r5, #(\k - Ldata)]
  vmov \sd, ip
.endm

@ nome do time: idreg=id do time, flag=0 casa/1 visitante, colslot=cor do texto,
@ align=0 esq/1 dir, xslot=x do texto, buf=buffer do nome
.macro NAME idreg, flag, colslot, align, xslot, buf
  mov r0, \idreg
  mvn r1, #0
  mov r2, #\flag
  bl TEAMNAME
  mov r1, r0
  SPADDR r0, \buf
  mov r2, #0x100
  bl CAP
  SPADDR r0, \buf
  bl STRLEN
  cmp r0, #1
  movlt r0, #1
  vmov s0, r0
  vcvt.f32.s32 s0, s0
  TL s1, K_CHARW
  vmul.f32 s0, s0, s1
  TL s1, K_AVAIL
  vdiv.f32 s2, s1, s0
  TL s3, K_SCMAX
  vcmp.f32 s2, s3
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s2, s3
  vstr s2, [sp, #L_SC]
  mov r0, #2
  bl SETFONT
  ldr r0, [sp, #L_SC]
  mov r1, r0
  bl S_SCALE
  ldr r0, [sp, #\colslot]
  ldr r1, [sp, #L_T]
  bl ALPHA
  mov r1, #0
  bl SETCOL
  mov r0, #\align
  bl ALIGN
  vldr s0, [sp, #L_YB]
  TL s1, K_BARH
  TL s2, K_HALF
  vmul.f32 s1, s1, s2
  vadd.f32 s0, s0, s1
  TL s1, K_TXTMID
  vldr s2, [sp, #L_SC]
  vmul.f32 s1, s1, s2
  vsub.f32 s0, s0, s1
  vmov r1, s0
  ldr r0, [sp, #\xslot]
  SPADDR r2, \buf
  bl PRINT
.endm

@ escudo: idreg=id do time, xslot=x
.macro SHIELD idreg, xslot
  SPADDR r0, O_IMG
  mov r1, \idreg
  mov r2, #0
  mvn r3, #0
  mvn ip, #1
  str ip, [sp]
  mov ip, #3
  str ip, [sp, #4]
  bl LOGO
  mvn r0, #0
  ldr r1, [sp, #L_T]
  bl ALPHA
  str r0, [sp, #4]
  TL s0, K_LOGOH
  vstr s0, [sp]
  vldr s0, [sp, #L_YB]
  TL s1, K_LODY
  vadd.f32 s0, s0, s1
  vmov r2, s0
  ldr r1, [sp, #\xslot]
  TL s0, K_LOGOW
  vmov r3, s0
  SPADDR r0, O_IMG
  bl DRAW
.endm

start:
  b Lcode
.balign 4
Ldata:
Lg_t: .word S_T - .
Lg_y: .word S_Y - .
Lg_w: .word S_W - .
K_HALF:   .float 0.5
K_ONE:    .float 1.0
K_MARG:   .float 42.9      @ margem da barra ate a borda da tela
K_BARY:   .float -86.0     @ topo da barra = G + isto
K_BARH:   .float 39.0      @ altura da barra
K_LOGOW:  .float 26.4      @ largura do escudo (corrige a distorcao: fica redondo)
K_LOGOH:  .float 39.0      @ altura do escudo
K_LOIN:   .float 0.0       @ recuo do escudo dentro da barra
K_LODY:   .float 0.0       @ ajuste vertical do escudo
K_GAP:    .float 6.0       @ espaco entre escudo e nome
K_TXTMID: .float 6.8       @ centro vertical do texto (sobe/desce o nome)
K_SCMAX:  .float 2.7       @ escala maxima do nome
K_CHARW:  .float 5.6       @ largura media da letra na escala 1
K_AVAIL:  .float 150.0     @ largura maxima do nome (encolhe se maior)
K_LGW:    .float 22.0      @ largura do logo da liga
K_LGH:    .float 37.0      @ altura do logo da liga
K_LGY:    .float -127.0    @ topo do logo da liga = G + isto
K_BANDY:  .float -135.0    @ topo da faixa escura translucida = G + isto
K_BANDH:  .float 89.0      @ altura da faixa escura
K_BANDA:  .float 0.35      @ opacidade da faixa (0 = sem faixa)
K_INV1:   .float 4.0       @ fase 1: logo (p ate 0.25)
K_T1:     .float 0.25
K_INV2:   .float 3.333333  @ fase 2: barra cresce (0.25 a 0.55)
K_T2:     .float 0.55
K_INV3:   .float 2.857143  @ fase 3: escudo+nome entram (0.55 a 0.90)
K_SLIDE:  .float 110.0     @ distancia inicial do deslize lateral

Lcode:
  push {r4-r11, lr}
  sub sp, sp, #4
  sub sp, sp, #1280
  sub sp, sp, #80
  mov r4, r0
  ldr r0, [r4, #8]
  sub r1, r0, #1
  cmp r1, #2
  bhi Lexit
  adr r5, Ldata
  cmp r0, #2
  beq Lstate2
  mov r0, r4
  bl GETTP
  str r0, [sp, #L_P]
  b Lgotp
Lstate2:
  mov r0, r4
  bl GETTL
  cmp r0, #0x59
  bgt Lnoexit
  ldr r0, [r4]
  mov r1, #3
  mov r2, #0x5a
  ldr r3, [r0, #0x14]
  mov r0, r4
  blx r3
Lnoexit:
  vmov.f32 s0, #1.0
  vstr s0, [sp, #L_P]
Lgotp:
  @ ---- progresso e fases
  vldr s0, [sp, #L_P]
  CL01 s0
  vstr s0, [sp, #L_P]
  TL s1, K_INV1
  vmul.f32 s2, s0, s1
  CL01 s2
  vstr s2, [sp, #L_A]
  TL s1, K_T1
  vsub.f32 s3, s0, s1
  TL s1, K_INV2
  vmul.f32 s3, s3, s1
  CL01 s3
  vstr s3, [sp, #L_GR]
  TL s1, K_T2
  vsub.f32 s4, s0, s1
  TL s1, K_INV3
  vmul.f32 s4, s4, s1
  CL01 s4
  vstr s4, [sp, #L_T]
  vmov.f32 s15, #1.0
  vsub.f32 s5, s15, s4
  vmul.f32 s6, s5, s5
  vmul.f32 s6, s6, s5
  vstr s6, [sp, #L_U3]
  @ ---- globais
  GETG r6, Lg_t
  GETG r7, Lg_y
  vldr s0, [r7]
  vstr s0, [sp, #L_G]
  GETG r7, Lg_w
  vldr s0, [r7]
  vstr s0, [sp, #L_W]
  @ ---- times: ids e cores
  movw r0, #0x8aab
  ldrb r8, [r6, r0]
  movw r0, #0x2840
  ldr r9, [r6, r0]
  movw r0, #0x3938
  ldr r10, [r6, r0]
  mov r0, r8
  bl TEAMCOL
  orr r0, r0, #0xff000000
  str r0, [sp, #L_CH]
  mov r0, r8
  mvn r1, #0
  bl BW
  str r0, [sp, #L_CTXH]
  eor r11, r8, #1
  mov r0, r11
  bl TEAMCOL
  orr r0, r0, #0xff000000
  str r0, [sp, #L_CA]
  mov r0, r11
  mvn r1, #0
  bl BW
  str r0, [sp, #L_CTXA]
  @ ---- geometria base
  vldr s0, [sp, #L_W]
  TL s1, K_HALF
  vmul.f32 s2, s0, s1
  vstr s2, [sp, #L_CX]
  vldr s1, [sp, #L_G]
  TL s5, K_BARY
  vadd.f32 s5, s1, s5
  vstr s5, [sp, #L_YB]
  @ ---- faixa escura translucida
  vldr s0, [sp, #L_A]
  TL s1, K_BANDA
  vmul.f32 s1, s0, s1
  vmov r1, s1
  mov r0, #0xff000000
  bl ALPHA
  str r0, [sp, #L_TMP]
  vldr s0, [sp, #L_G]
  TL s1, K_BANDY
  vadd.f32 s0, s0, s1
  vmov r1, s0
  mov r0, #0
  ldr r2, [sp, #L_W]
  ldr r3, [r5, #(K_BANDH - Ldata)]
  ldr ip, [sp, #L_TMP]
  bl boxcommon
  @ ---- logo da liga (so em modo torneio)
  vldr s0, [sp, #L_A]
  vcmp.f32 s0, #0
  vmrs APSR_nzcv, fpscr
  ble Lnoleague
  bl ISTOURN
  cmp r0, #1
  bne Lnoleague
  bl GETACT
  bl TID
  bl MCUIDX
  cmp r0, #0
  blt Lnoleague
  cmp r0, #0x20
  bgt Lnoleague
  mov r1, r0
  SPADDR r0, O_IMG
  bl LGSINGLE
  mvn r0, #0
  ldr r1, [sp, #L_A]
  bl ALPHA
  str r0, [sp, #4]
  ldr r0, [r5, #(K_LGH - Ldata)]
  str r0, [sp]
  vldr s0, [sp, #L_CX]
  TL s1, K_LGW
  TL s2, K_HALF
  vmul.f32 s1, s1, s2
  vsub.f32 s0, s0, s1
  vmov r1, s0
  vldr s0, [sp, #L_G]
  TL s1, K_LGY
  vadd.f32 s0, s0, s1
  vmov r2, s0
  ldr r3, [r5, #(K_LGW - Ldata)]
  SPADDR r0, O_IMG
  bl DRAW
Lnoleague:
  @ ---- barra dividida (cresce a partir do meio)
  vldr s2, [sp, #L_CX]
  TL s1, K_MARG
  vsub.f32 s3, s2, s1
  vldr s1, [sp, #L_GR]
  vmul.f32 s3, s3, s1
  vstr s3, [sp, #L_HG]
  vcmp.f32 s3, #0
  vmrs APSR_nzcv, fpscr
  ble Lnobar
  vsub.f32 s4, s2, s3
  vmov r0, s4
  ldr r1, [sp, #L_YB]
  vmov r2, s3
  ldr r3, [r5, #(K_BARH - Ldata)]
  ldr ip, [sp, #L_CH]
  bl boxcommon
  ldr r0, [sp, #L_CX]
  ldr r1, [sp, #L_YB]
  ldr r2, [sp, #L_HG]
  ldr r3, [r5, #(K_BARH - Ldata)]
  ldr ip, [sp, #L_CA]
  bl boxcommon
Lnobar:
  @ ---- escudos e nomes (entram de lado)
  vldr s0, [sp, #L_T]
  vcmp.f32 s0, #0
  vmrs APSR_nzcv, fpscr
  ble Lend
  vldr s6, [sp, #L_U3]
  TL s7, K_SLIDE
  vmul.f32 s6, s6, s7          @ s6 = deslocamento restante
  @ x do escudo da casa = marg + loin - desl
  TL s0, K_MARG
  TL s1, K_LOIN
  vadd.f32 s0, s0, s1
  vsub.f32 s0, s0, s6
  vstr s0, [sp, #L_NX]
  SHIELD r9, L_NX
  @ x do escudo visitante = W - marg - loin - logow + desl
  vldr s6, [sp, #L_U3]
  TL s7, K_SLIDE
  vmul.f32 s6, s6, s7
  vldr s0, [sp, #L_W]
  TL s1, K_MARG
  vsub.f32 s0, s0, s1
  TL s1, K_LOIN
  vsub.f32 s0, s0, s1
  TL s1, K_LOGOW
  vsub.f32 s0, s0, s1
  vadd.f32 s0, s0, s6
  vstr s0, [sp, #L_NX]
  SHIELD r10, L_NX
  @ nome da casa: x = marg + logow + gap - desl (alinhado a esquerda)
  vldr s6, [sp, #L_U3]
  TL s7, K_SLIDE
  vmul.f32 s6, s6, s7
  TL s0, K_MARG
  TL s1, K_LOGOW
  vadd.f32 s0, s0, s1
  TL s1, K_GAP
  vadd.f32 s0, s0, s1
  vsub.f32 s0, s0, s6
  vstr s0, [sp, #L_NX]
  NAME r9, 0, L_CTXH, 0, L_NX, O_NH
  @ nome do visitante: x = W - marg - logow - gap + desl (alinhado a direita)
  vldr s6, [sp, #L_U3]
  TL s7, K_SLIDE
  vmul.f32 s6, s6, s7
  vldr s0, [sp, #L_W]
  TL s1, K_MARG
  vsub.f32 s0, s0, s1
  TL s1, K_LOGOW
  vsub.f32 s0, s0, s1
  TL s1, K_GAP
  vsub.f32 s0, s0, s1
  vadd.f32 s0, s0, s6
  vstr s0, [sp, #L_NX]
  NAME r10, 1, L_CTXA, 1, L_NX, O_NA
Lend:
  mov r0, #1
  bl SETFONT
Lexit:
  add sp, sp, #1280
  add sp, sp, #80
  add sp, sp, #4
  pop {r4-r11, pc}

boxcommon:                 @ r0..r3 = x,y,w,h ; ip = cor
  str ip, [sp]
  mov ip, #1
  str ip, [sp, #4]
  mov ip, #0
  str ip, [sp, #8]
  mov ip, #15
  str ip, [sp, #12]
  ldr ip, [r5, #(K_ONE - Ldata)]
  str ip, [sp, #16]
  mov ip, #0
  str ip, [sp, #20]
  mov ip, #0xff000000
  str ip, [sp, #24]
  b RB
.ltorg
