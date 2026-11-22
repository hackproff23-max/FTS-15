import json,struct
from cfg import CFG as c
tg=json.load(open('targets.json'))
import re as _re
_src=open(__file__).read()
_strs=_re.findall(r'^\w+:\s+\.asciz \"(.*)\"',_src,_re.M)
KBASE=(12+sum(len(x.replace('\\\\','\\'))+1 for x in _strs)+3)&~3
KT={}
def g(x):
    h=f(x)
    if h not in KT: KT[h]=len(KT)
    return str(KBASE+4*KT[h])
def K(x):
    return '[r5, #%s]'%g(x)
def f(x): return "0x%08x"%struct.unpack('<I',struct.pack('<f',x))[0]
N={'RB':'_Z15FEBU_RoundedBoxffffjbfifbj','LOGO':'_Z16FETU_GetTeamLogoP6TImageibiii','DRAW':'_Z21FTS2D_DrawTexScaleColP6TImageffffj',
 'SETFONT':'_Z12FESU_SetFonti','ALIGN':'_Z16XGSFont_SetAlign10EFontAlign','ALPHA':'_Z28XGSColour_AddPercentileAlphajf',
 'SETCOL':'_Z17XGSFont_SetColourjj','CAP':'_Z15FESU_CapitalizePwPKwi','PRINT':'_Z21XGSFont_PrintfUnicodeffPKwz',
 'SPRINTF':'_Z8xsprintfPwPKcz','TEAMCOL':'_ZN13CHudComponent13GetTeamColourEi','BW':'_ZN13CHudComponent23GetBestTextTeamColourBWEii','MIX':'_Z7XMixColjjf','STRLEN':'_Z7xstrlenPKw','TEAMNAME':'_Z24FESU_GetTeamNameForWidthiii'}
YT,CP,CT,CL=0x1b0,0x1b4,0x1b8,0x1bc
WS,SN,SS,TN,TS,PS,QS,AN,RS,IX,CLR,QI=0x1c0,0x1c4,0x1c8,0x1cc,0x1d0,0x1d4,0x1d8,0x1dc,0x1e0,0x1e4,0x1e8,0x1ec
TB=0x1f0
FR=0x250   # slots na pilha
s=f'''
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
  vmov s0, \\rs
  vldr s1, [r5, #\\imm]
  vadd.f32 s0, s0, s1
  vmov \\rd, s0
.endm
.macro GETG rd, off
  add \\rd, r5, #\\off
  ldr ip, [\\rd]
  add \\rd, \\rd, ip
  ldr \\rd, [\\rd]
.endm
@ caixa: x(const) y=ytopo+dy w h cor(const)
.macro BOXC x, dy, w, h, col
  ldr r0, [sp, #{YT}]
  FADD r1, r0, \\dy
  ldr r0, =\\x
  ldr r2, =\\w
  ldr r3, =\\h
  ldr ip, =\\col
  bl boxcommon
.endm
.macro BOXS x, dy, w, h, slot
  ldr r0, [sp, #{YT}]
  FADD r1, r0, \\dy
  ldr r0, =\\x
  ldr r2, =\\w
  ldr r3, =\\h
  ldr ip, [sp, #\\slot]
  bl boxcommon
.endm
.macro BOXSW x, dy, h, slot
  ldr r0, [sp, #{YT}]
  FADD r1, r0, \\dy
  ldr r0, =\\x
  ldr r2, [sp, #{WS}]
  ldr r3, =\\h
  ldr ip, [sp, #\\slot]
  bl boxcommon
.endm
.macro BOXCW x, dy, h, col
  ldr r0, [sp, #{YT}]
  FADD r1, r0, \\dy
  ldr r0, =\\x
  ldr r2, [sp, #{WS}]
  ldr r3, =\\h
  ldr ip, =\\col
  bl boxcommon
.endm
.macro SCALEV slot
  ldr r0, [sp, #\\slot]
  mov r1, r0
  bl S_SCALE
.endm
.macro CLAMP sx
  vcmp.f32 \\sx, s15
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 \\sx, s15
  vcmp.f32 \\sx, s14
  vmrs APSR_nzcv, fpscr
  vmovlt.f32 \\sx, s14
.endm
.macro ALPHACOL colslot, aslot
  ldr r0, [sp, #\\colslot]
  ldr r1, [sp, #\\aslot]
  bl ALPHA
  mov r1, #0
  bl SETCOL
.endm
@ texto em x = base + k*[slot]
.macro PRINTXV base, k, slot, dy, reg
  mov r0, #0
  bl ALIGN
  vldr s0, [sp, #\\slot]
  vldr s1, [r5, #\\k]
  vmul.f32 s0, s0, s1
  vldr s1, [r5, #\\base]
  vadd.f32 s0, s0, s1
  ldr r1, [sp, #{YT}]
  FADD r1, r1, \\dy
  vmov r0, s0
  add r2, sp, #\\reg
  bl PRINT
.endm
@ caixa redonda do icone: x=[IX]+xo, y=ytopo+dy, w, h, cor em [CLR], raio em [RS]
.macro BOXR xo, dy, w, h
  ldr r0, [sp, #{YT}]
  FADD r1, r0, \\dy
  ldr r0, [sp, #{IX}]
  FADD r0, r0, \\xo
  ldr r2, =\\w
  ldr r3, =\\h
  bl boxround
.endm
.macro SETRC col, rad
  ldr ip, =\\col
  str ip, [sp, #{CLR}]
  ldr ip, =\\rad
  str ip, [sp, #{RS}]
.endm
.macro TXTCOL col
  ldr r0, =\\col
  ldr r1, =0x3f800000
  bl ALPHA
  mov r1, #0
  bl SETCOL
.endm
.macro SCALE v
  ldr r0, =\\v
  mov r1, r0
  bl S_SCALE
.endm
@ texto: alinhamento, x(const) y=ytopo+dy ponteiro em r2
.macro PRINTAT align, x, dy, reg
  mov r0, #\\align
  bl ALIGN
  ldr r0, [sp, #{YT}]
  FADD r1, r0, \\dy
  ldr r0, =\\x
  add r2, sp, #\\reg
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
Lp_pos:  .asciz "+8"
Lp_yel:  .asciz "-2"
Lp_red:  .asciz "-10"
Lp_num:  .asciz "%d"
.balign 4
@@KTABLE@@
Lcode:
  push {{r4-r11, lr}}
  sub sp, sp, #4
  sub sp, sp, #{FR}
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
  FADD r4, r4, {g(-72.0+c['DY'])}
  str r4, [sp, #{YT}]
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
  str r0, [sp, #{CP}]
  mov r0, r4
  mvn r1, #0
  bl BW
  str r0, [sp, #{CT}]
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
  str r0, [sp, #{TN}]
  mov r0, #0
  add r1, sp, #{TB}
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
  add r0, sp, #{TB}
  mov r2, #0x17
  bl CAP
  add r0, sp, #{TB}
  bl STRLEN
  cmp r0, #1
  movlt r0, #1
  str r0, [sp, #{TN}]
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
  ldrls ip, ={f(c['ICON_EX'])}
  movhi ip, #0
  vmov s8, ip              @ s8 = espaco do icone (gol/amarelo/vermelho)
  vmov s0, r4
  vcvt.f32.s32 s0, s0
  vmov s2, r9
  vcvt.f32.s32 s2, s2
  ldr r0, [sp, #{TN}]
  vmov s9, r0
  vcvt.f32.s32 s9, s9
  vldr s1, {K(c['CW']*c['NAME_SCALE'])}
  vmul.f32 s1, s0, s1
  vldr s4, {K(c['NAME_X']+c['PADR'])}
  vadd.f32 s1, s1, s4      @ precisa p/ nome
  vldr s3, {K(c['CW']*c['STAT_SCALE'])}
  vmul.f32 s3, s2, s3
  vldr s4, {K(c['STAT_X']+c['PADR'])}
  vadd.f32 s3, s3, s4
  vadd.f32 s3, s3, s8      @ precisa p/ texto de baixo (+icone)
  vldr s10, {K(c['CW']*c['NAME_SCALE'])}
  vmul.f32 s10, s9, s10
  vldr s4, {K(c['NUM_X']+c['PADR'])}
  vadd.f32 s10, s10, s4    @ precisa p/ nome do time
  vldr s5, {K(c['CARD_W'])}              @ s5 = largura W
  vcmp.f32 s1, s5
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s5, s1
  vcmp.f32 s3, s5
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s5, s3
  vcmp.f32 s10, s5
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s5, s10
  vldr s6, {K(c['MAXW'])}
  vcmp.f32 s5, s6
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s5, s6
  vstr s5, [sp, #{WS}]
  vldr s11, {K(c['CW'])}             @ s11 = CW
  vldr s12, {K(c['NAME_SCALE'])}
  @ escala do nome = min(NAME_SCALE, (W-margem-NAME_X)/(n*CW))
  vldr s4, {K(c['NAME_X']+c['PADR'])}
  vsub.f32 s7, s5, s4
  vmul.f32 s0, s0, s11
  vdiv.f32 s7, s7, s0
  vcmp.f32 s7, s12
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s7, s12
  vstr s7, [sp, #{SN}]
  @ escala do nome do time
  vldr s4, {K(c['NUM_X']+c['PADR'])}
  vsub.f32 s7, s5, s4
  vmul.f32 s9, s9, s11
  vdiv.f32 s7, s7, s9
  vcmp.f32 s7, s12
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s7, s12
  vstr s7, [sp, #{TS}]
  @ escala do texto de baixo
  vldr s4, {K(c['STAT_X']+c['PADR'])}
  vsub.f32 s7, s5, s4
  vsub.f32 s7, s7, s8
  vmul.f32 s2, s2, s11
  vdiv.f32 s7, s7, s2
  vldr s1, {K(c['STAT_SCALE'])}
  vcmp.f32 s7, s1
  vmrs APSR_nzcv, fpscr
  vmovgt.f32 s7, s1
  vstr s7, [sp, #{SS}]
  @ ---- animacao do gol (contador de frames em STAT+0x2b4; SetupPlayerStats zera)
  mov ip, #0
  vmov s14, ip
  vmov.f32 s15, #1.0
  vstr s14, [sp, #{PS}]
  vstr s14, [sp, #{QS}]
  vstr s15, [sp, #{AN}]
  vstr s15, [sp, #{QI}]
  cmp r11, #1
  bne Lnoanim
  ldrb r0, [r6, #0x2b4]
  vmov s0, r0
  vcvt.f32.s32 s0, s0
  cmp r0, #255
  addlo r1, r0, #1
  strblo r1, [r6, #0x2b4]
  vldr s3, {K(1.0/c['ANIM_FADE'])}
  vldr s1, {K(c['ANIM_HOLD'])}
  vsub.f32 s2, s0, s1
  vmul.f32 s2, s2, s3
  CLAMP s2                 @ p: saida do nome (0..1)
  vldr s1, {K(c['ANIM_HOLD']+c['ANIM_FADE'])}
  vsub.f32 s4, s0, s1
  vmul.f32 s4, s4, s3
  CLAMP s4                 @ q: entrada do time (0..1)
  vsub.f32 s5, s15, s2
  vsub.f32 s6, s15, s4
  vstr s2, [sp, #{PS}]
  vstr s4, [sp, #{QS}]
  vstr s5, [sp, #{AN}]
  vstr s6, [sp, #{QI}]
Lnoanim:
  @ ---- caixa do cartao
  BOXSW {f(c['CARD_X'])}, {g(0.0)}, {f(c['TOP_H']+c['BOT_H'])}, {CP}
  BOXCW {f(c['CARD_X'])}, {g(c['TOP_H'])}, {f(c['BOT_H'])}, 0xffe8e8e8
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
  ldr r0, [sp, #{YT}]
  FADD r2, r0, {g(c['LOGO_DY'])}
  mvn r1, #0
  str r1, [sp, #4]
  ldr r1, ={f(c['LOGO_S'])}
  str r1, [sp]
  mov r3, r1
  ldr r1, ={f(c['LOGO_X'])}
  add r0, sp, #0x120
  bl DRAW
  @ ---- numero + nome (saem deslizando no gol)
  mov r0, #2
  bl SETFONT
  SCALEV {SN}
  ALPHACOL {CT}, {AN}
  PRINTXV {g(c['NUM_X'])}, {g(-c['SLIDE'])}, {PS}, {g(c['NAME_DY'])}, 0x90
  PRINTXV {g(c['NAME_X'])}, {g(-c['SLIDE'])}, {PS}, {g(c['NAME_DY'])}, 0x40
  @ ---- nome do time (entra no gol)
  cmp r11, #1
  bne Lnoteamdraw
  SCALEV {TS}
  ALPHACOL {CT}, {QS}
  PRINTXV {g(c['NUM_X'])}, {g(c['SLIDE_IN'])}, {QI}, {g(c['NAME_DY'])}, {TB}
Lnoteamdraw:
  @ ---- texto de baixo
  mov r0, #2
  bl SETFONT
  SCALEV {SS}
  TXTCOL 0xff303030
  PRINTAT 0, {f(c['STAT_X'])}, {g(c['TOP_H']+c['STAT_DY'])}, 0xc0
  @ ---- icone ao lado do texto (bola no gol, cartao amarelo/vermelho)
  sub r0, r11, #1
  cmp r0, #2
  bhi Lend
  vmov s0, r9
  vcvt.f32.s32 s0, s0
  vldr s1, [sp, #{SS}]
  vmul.f32 s0, s0, s1
  vldr s1, {K(c['CW'])}
  vmul.f32 s0, s0, s1
  vldr s1, {K(c['STAT_X']+c['GAP'])}
  vadd.f32 s0, s0, s1
  vstr s0, [sp, #{IX}]
  cmp r11, #1
  beq Lball
  cmp r11, #2
  ldreq ip, =0xfff2d21a
  ldrne ip, =0xffe01818
  str ip, [sp, #{CLR}]
  ldr ip, ={f(1.5)}
  str ip, [sp, #{RS}]
  BOXR {g(0.0)}, {g(c['TOP_H']+5.2)}, {f(9.0)}, {f(12.4)}
  b Lend
Lball:
  SETRC 0xff000000, {f(6.5)}
  BOXR {g(0.0)}, {g(c['TOP_H']+4.8)}, {f(13.0)}, {f(13.0)}
  SETRC 0xffffffff, {f(5.5)}
  BOXR {g(1.0)}, {g(c['TOP_H']+5.8)}, {f(11.0)}, {f(11.0)}
  SETRC 0xff000000, {f(2.3)}
  BOXR {g(4.2)}, {g(c['TOP_H']+9.0)}, {f(4.6)}, {f(4.6)}
Lend:
  mov r0, #1
  bl SETFONT               @ restaura fonte/escala padrao (como o original)
Lexit:
  add sp, sp, #{FR}
  add sp, sp, #4
  pop {{r4-r11, pc}}

boxround:                  @ r0..r3 = x,y,w,h ; cor em [CLR], raio em [RS]
  ldr ip, [sp, #{CLR}]
  str ip, [sp]
  mov ip, #1
  str ip, [sp, #4]
  ldr ip, [sp, #{RS}]
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
  push {{r4, lr}}
  bl S_SETUP
  adr r4, TgA
  ldr r0, [r4]
  add r4, r4, r0
  ldr r4, [r4]
  ldrb r0, [r4, #0x2b6]
  strb r0, [r4, #0x2b5]    @ atual = pendente
  mov r0, #0
  strb r0, [r4, #0x2b6]    @ pendente = outro
  pop {{r4, pc}}

tramp_goal:                @ substitui bl FTSstring no ramo de GOL (nao contra)
  push {{r0, lr}}
  adr r1, TgA
  ldr r2, [r1]
  add r1, r1, r2
  ldr r1, [r1]
  mov r2, #1
  strb r2, [r1, #0x2b6]    @ pendente = gol
  pop {{r0, lr}}
  b S_FTSSTR

tramp_own:                 @ substitui bl FTSstring(IG_OWNGOAL): marca gol contra
  push {{r0, lr}}
  adr r1, TgA
  ldr r2, [r1]
  add r1, r1, r2
  ldr r1, [r1]
  mov r2, #1
  strb r2, [r1, #0x2b7]
  pop {{r0, lr}}
  b S_FTSSTR

.ltorg

.section .textB,"ax"
.balign 4
Td:
Tg: .word S_G - .
Tt: .word S_T - .
Th: .word S_H - .
tramp_card:                @ substitui bl GameMessageSet nos cartoes (r0 = 9 amarelo, 10 vermelho)
  push {{r4-r6, lr}}
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
  pop {{r4-r6, pc}}

tramp_msg:                 @ lesao / melhor em campo: r0=id r1=texto r2=&nome(+0x24) r3=time
  push {{r4-r8, lr}}
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
  pop {{r4-r8, pc}}
.ltorg
'''
s=s.replace('@@KTABLE@@','\n'.join('.word %s'%h for h,i in sorted(KT.items(),key=lambda t:t[1])))
open('card.s','w').write(s)
syms={k:tg[v] for k,v in N.items()}
syms.update(S_G=0x6beae4,S_T=0x6bdb98,S_Y=0x6bdef8,S_H=0x6be78c,S_SCALE=0x1d27e4,S_SETUP=0x283e28,S_FTSSTR=tg['_Z9FTSstringi'],S_IDIV=tg['__aeabi_idiv'])
open('syms.txt','w').write(' '.join(f'--defsym={k}=0x{v:x}' for k,v in syms.items()))
