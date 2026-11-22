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
.equ L_SC2,  100
.equ L_N0,   104
.equ L_TLV,  108
.equ O_IMG,  112
.equ O_NH,   336
.equ O_NA,   848

@ slots reaproveitados depois que a barra ja foi desenhada
.equ S_TW,   L_TMP   @ largura do nome
.equ S_WX0,  L_GR    @ inicio da janela
.equ S_WX1,  L_A     @ fim da janela
.equ S_OFF,  L_HG    @ x do texto

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

@ alpha manual (sem passar por XGSColour_AddPercentileAlpha):
@ rd = (alpha*255)<<24 | rgb ; sa = s-reg com alpha 0..1 ; white=1 -> rgb=ffffff
.macro MANA rd, sa, white
  TL s14, K_255
  vmul.f32 s14, \sa, s14
  vcvt.u32.f32 s14, s14
  vmov \rd, s14
  lsl \rd, \rd, #24
.if \white
  mvn ip, #0xff000000
  orr \rd, \rd, ip
.endif
.endm

@ quadradinho de diagnostico acima da barra (so se K_DBG != 0)
.macro DBGBOX dx, col
  TL s1, K_DBG
  vcmp.f32 s1, #0
  vmrs APSR_nzcv, fpscr
  beq 1f
  vldr s0, [sp, #L_CX]
  TL s1, \dx
  vadd.f32 s0, s0, s1
  vmov r0, s0
  vldr s0, [sp, #L_G]
  TL s1, K_LGY
  vadd.f32 s0, s0, s1
  vmov r1, s0
  TL s2, K_DBGSZ
  vmov r2, s2
  mov r3, r2
  movw ip, #((\col) & 0xffff)
  movt ip, #((\col) >> 16)
  bl boxcommon
1:
.endm

@ mede o nome: guarda a escala (limitada) em [sp,#slot]
.macro PREP idreg, flag, buf, slot
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
  str r0, [sp, #\slot]
.endm

@ desenha o nome (buffer ja preenchido por PREP; escala comum em L_SC)
.macro NAME colslot, side, buf, nslot
  SPADDR r6, \buf
  mov r7, #\side
  mov r8, #\colslot
  mov r9, #\nslot
  bl NMDRAW
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
Lg_hw: .word S_HW - .
Lg_hh: .word S_HH - .
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
K_SCMAX:  .float 2.7       @ tamanho FIXO dos dois nomes (igual nos dois)
K_CHARW:  .float 5.0       @ largura media da letra na escala 1
K_AVAIL:  .float 162.0     @ largura da janela do nome (maior que isso = rola de lado)
K_LGW:    .float 33.0      @ largura do logo da liga
K_LGH:    .float 55.5      @ altura do logo da liga
K_LGY:    .float -145.5    @ topo do logo da liga = G + isto
K_BANDY:  .float -135.0    @ topo da faixa escura translucida = G + isto
K_BANDH:  .float 89.0      @ altura da faixa escura
K_BANDA:  .float 0.0      @ opacidade da faixa (0 = sem faixa)
K_INV1:   .float 4.0       @ fase 1: logo (p ate 0.25)
K_T1:     .float 0.25
K_INV2:   .float 3.333333  @ fase 2: barra cresce (0.25 a 0.55)
K_T2:     .float 0.55
K_INV3:   .float 2.857143  @ fase 3: escudo+nome entram (0.55 a 0.90)
K_SLIDE:  .float 110.0     @ distancia inicial do deslize lateral
K_HOLD:   .float 0.2       @ parada nas pontas do vai-e-volta (maior = para mais)
K_INVSPAN:.float 1.666667  @ 1/(1-2*HOLD)
K_TLMAX:  .float 90.0      @ duracao (ticks) de um vai-e-volta completo
K_CLIPPAD:.float 24.0      @ folga vertical do recorte do nome (acima/abaixo da barra)
K_CYC:    .float 1.0       @ quantos vai-e-volta durante a exibicao
K_PLO:    .float 0.5       @ largura medida so vale entre PLO e PHI x estimativa
K_PHI:    .float 2.2
K_255:    .float 255.0
K_DBG:    .float 0.0       @ 1 = quadradinhos de diagnostico acima da barra (0 desliga)
K_DBGSZ:  .float 8.0
K_DBX1:   .float -20.0
K_DBX2:   .float 0.0
K_DBX3:   .float 20.0

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
  mov r0, #0
  str r0, [sp, #L_TLV]
  b Lgotp
Lstate2:
  mov r0, r4
  bl GETTL
  str r0, [sp, #L_TLV]
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
  @ fase do vai-e-volta dos nomes longos (float 0..1 em L_TLV):
  @ decorrido = (fim - inicio) - tempo_restante ; janela = (fim - inicio) - 89
  ldr r0, [r4, #0xc]
  ldr r1, [r4, #0x10]
  sub r0, r0, r1
  ldr r1, [sp, #L_TLV]
  sub r1, r0, r1
  sub r0, r0, #0x59
  cmp r0, #1
  movlt r0, #1
  vmov s0, r1
  vcvt.f32.s32 s0, s0
  vmov s1, r0
  vcvt.f32.s32 s1, s1
  vdiv.f32 s0, s0, s1
  vstr s0, [sp, #L_TLV]
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
  vmul.f32 s0, s0, s1
  MANA r0, s0, 0
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
  str r0, [sp, #L_TMP]
  ldr r1, [sp, #L_TMP]
  SPADDR r0, O_IMG
  bl LGSINGLE
  vldr s0, [sp, #L_A]
  MANA r0, s0, 1
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
  PREP r9, 0, O_NH, L_N0
  PREP r10, 1, O_NA, L_SC2
  TL s0, K_SCMAX
  vstr s0, [sp, #L_SC]
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
  @ nomes: janela, rolagem suave e recorte ficam em NMDRAW
  NAME L_CTXH, 0, O_NH, L_N0
  NAME L_CTXA, 1, O_NA, L_SC2
Lend:
  mov r0, #1
  bl SETFONT
Lexit:
  add sp, sp, #1280
  add sp, sp, #80
  add sp, sp, #4
  pop {r4-r11, pc}

NMDRAW:                    @ r6=buf r7=lado(0 casa,1 visitante) r8=slot cor r9=slot n letras
  mov r11, lr
  mov r0, #2
  bl SETFONT
  ldr r0, [sp, #L_SC]
  mov r1, r0
  bl S_SCALE
  @ ---- largura do nome (medida pelo jogo; se vier estranha usa estimativa)
  mov r0, r6
  bl TXTW
  vmov s0, r0
  vmov.f32 s1, #1.0
  vcmp.f32 s0, s1
  vmrs APSR_nzcv, fpscr
  bge 1f
  vmov s0, r0
  vcvt.f32.s32 s0, s0         @ veio como inteiro
1:
  ldr r0, [sp, r9]
  vmov s1, r0
  vcvt.f32.s32 s1, s1
  TL s2, K_CHARW
  vmul.f32 s1, s1, s2
  vldr s2, [sp, #L_SC]
  vmul.f32 s1, s1, s2          @ s1 = estimativa
  TL s2, K_PLO
  vmul.f32 s2, s2, s1
  vcmp.f32 s0, s2
  vmrs APSR_nzcv, fpscr
  vmovlt.f32 s0, s1
  TL s2, K_PHI
  vmul.f32 s2, s2, s1
  vcmp.f32 s0, s2
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s0, s1
  vstr s0, [sp, #S_TW]
  @ ---- janela do nome (acompanha o deslize de entrada)
  vldr s6, [sp, #L_U3]
  TL s7, K_SLIDE
  vmul.f32 s6, s6, s7          @ deslocamento restante
  TL s2, K_MARG
  TL s3, K_LOGOW
  vadd.f32 s2, s2, s3
  TL s3, K_GAP
  vadd.f32 s2, s2, s3          @ marg + logow + gap
  cmp r7, #0
  bne 2f
  vsub.f32 s2, s2, s6          @ casa: inicio da janela
  b 3f
2:
  vldr s4, [sp, #L_W]
  vsub.f32 s4, s4, s2
  TL s3, K_AVAIL
  vsub.f32 s4, s4, s3
  vadd.f32 s2, s4, s6          @ visitante: inicio da janela
3:
  TL s3, K_AVAIL
  vadd.f32 s3, s2, s3
  vstr s2, [sp, #S_WX0]
  vstr s3, [sp, #S_WX1]
  @ ---- precisa rolar?
  vldr s0, [sp, #S_TW]
  TL s1, K_AVAIL
  vsub.f32 s4, s0, s1          @ excesso
  mov r10, #0
  vcmp.f32 s4, #0
  vmrs APSR_nzcv, fpscr
  ble Lnoscr
  @ fase 0..1 -> triangulo -> parada nas pontas -> suavizacao (smoothstep)
  vldr s5, [sp, #L_TLV]
  TL s6, K_CYC
  vmul.f32 s5, s5, s6
  vcvt.s32.f32 s7, s5
  vcvt.f32.s32 s7, s7
  vsub.f32 s5, s5, s7          @ fracao do ciclo
  vadd.f32 s5, s5, s5
  vmov.f32 s15, #1.0
  vsub.f32 s5, s5, s15
  vabs.f32 s5, s5
  vsub.f32 s5, s15, s5         @ triangulo 0..1..0
  TL s6, K_HOLD
  vsub.f32 s5, s5, s6
  TL s6, K_INVSPAN
  vmul.f32 s5, s5, s6
  CL01 s5
  vmul.f32 s6, s5, s5
  vmov.f32 s7, #2.0
  vmul.f32 s7, s7, s5
  vmov.f32 s14, #3.0
  vsub.f32 s7, s14, s7
  vmul.f32 s5, s6, s7          @ 3u^2 - 2u^3
  vmul.f32 s5, s5, s4          @ deslocamento = fase x excesso
  vldr s2, [sp, #S_WX0]
  vsub.f32 s2, s2, s5
  vstr s2, [sp, #S_OFF]
  mov r10, #1
  b Lpos
Lnoscr:
  cmp r7, #0
  vldr s2, [sp, #S_WX0]
  vldrne s2, [sp, #S_WX1]
  vstr s2, [sp, #S_OFF]
Lpos:
  @ ---- cor e alinhamento
  ldr r0, [sp, r8]
  ldr r1, [sp, #L_T]
  bl ALPHA
  mov r1, #0
  bl SETCOL
  cmp r10, #0
  movne r0, #0                 @ rolando: sempre alinhado a esquerda
  moveq r0, r7
  bl ALIGN
  @ ---- recorte (scissor) so quando rola
  cmp r10, #0
  beq Lnoclip
  GETG r0, Lg_hw
  vldr s8, [r0]
  vldr s9, [sp, #L_W]
  vdiv.f32 s8, s8, s9          @ pixels por unidade em x
  GETG r0, Lg_hh
  vldr s10, [r0]
  vldr s11, [sp, #L_G]
  vdiv.f32 s10, s10, s11       @ pixels por unidade em y
  vldr s0, [sp, #S_WX0]
  vmul.f32 s0, s0, s8
  vcvt.s32.f32 s0, s0          @ esquerda
  vldr s2, [sp, #S_WX1]
  vmul.f32 s2, s2, s8
  vcvt.s32.f32 s2, s2          @ direita
  vldr s1, [sp, #L_YB]
  TL s12, K_CLIPPAD
  vsub.f32 s1, s1, s12
  vmul.f32 s1, s1, s10
  vcvt.s32.f32 s1, s1          @ topo
  vldr s3, [sp, #L_YB]
  TL s12, K_BARH
  vadd.f32 s3, s3, s12
  TL s12, K_CLIPPAD
  vadd.f32 s3, s3, s12
  vmul.f32 s3, s3, s10
  vcvt.s32.f32 s3, s3          @ base
  vmov r0, s0
  vmov r1, s1
  vmov r2, s2
  vmov r3, s3
  bl SCISS
Lnoclip:
  @ ---- y do texto e desenho
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
  ldr r0, [sp, #S_OFF]
  mov r2, r6
  bl PRINT
  cmp r10, #0
  blne SCISSOFF
  bx r11

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
