import json,struct
from cfg import CFG as c
tg=json.load(open('targets.json'))
def f(x): return "0x%08x"%struct.unpack('<I',struct.pack('<f',x))[0]
N={'RB':'_Z15FEBU_RoundedBoxffffjbfifbj','LOGO':'_Z16FETU_GetTeamLogoP6TImageibiii','DRAW':'_Z21FTS2D_DrawTexScaleColP6TImageffffj',
 'SETFONT':'_Z12FESU_SetFonti','ALIGN':'_Z16XGSFont_SetAlign10EFontAlign','ALPHA':'_Z28XGSColour_AddPercentileAlphajf',
 'SETCOL':'_Z17XGSFont_SetColourjj','CAP':'_Z15FESU_CapitalizePwPKwi','PRINT':'_Z21XGSFont_PrintfUnicodeffPKwz',
 'SPRINTF':'_Z8xsprintfPwPKcz','TEAMCOL':'_ZN13CHudComponent13GetTeamColourEi','BW':'_ZN13CHudComponent23GetBestTextTeamColourBWEii','MIX':'_Z7XMixColjjf'}
YT,CP,CT,CL=0x1b0,0x1b4,0x1b8,0x1bc   # slots na pilha
s=f'''
.arm
.syntax unified
.fpu neon-vfpv4
.text
.global start
.global tramp_setup
.global tramp_goal
.global tramp_card
.macro FADD rd, rs, imm
  ldr ip, =\\imm
  vmov s0, \\rs
  vmov s1, ip
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
Lp_pos:  .asciz "+8"
Lp_yel:  .asciz "-2"
Lp_red:  .asciz "-10"
Lp_num:  .asciz "%d"
.balign 4
Lcode:
  push {{r4-r11, lr}}
  sub sp, sp, #4
  sub sp, sp, #0x1d0
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
  FADD r4, r4, {f(-72.0+c['DY'])}
  str r4, [sp, #{YT}]
  ldr r8, [r6, #0x2bc]     @ time
  ldr r9, [r6, #0x2b8]     @ jogador
  movw r0, #0x10f8
  mla r1, r8, r0, r7
  movw r0, #0x392c
  ldr r1, [r1, r0]
  mov r0, #0x74
  mla r10, r9, r0, r1      @ r10 = jogador
  ldrb r11, [r6, #0x2b5]   @ evento: 0 outro, 1 gol, 2 amarelo, 3 vermelho
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
  ldr r0, =0xffe8e8e8
  str r0, [sp, #{CL}]
  @ ---- caixa do cartao
  BOXS {f(c['CARD_X'])}, {f(0.0)}, {f(c['CARD_W'])}, {f(c['TOP_H']+c['BOT_H'])}, {CP}
  BOXC {f(c['CARD_X'])}, {f(c['TOP_H'])}, {f(c['CARD_W'])}, {f(c['BOT_H'])}, 0xffe8e8e8
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
  FADD r2, r0, {f(c['LOGO_DY'])}
  mvn r1, #0
  str r1, [sp, #4]
  ldr r1, ={f(c['LOGO_S'])}
  str r1, [sp]
  mov r3, r1
  ldr r1, ={f(c['LOGO_X'])}
  add r0, sp, #0x120
  bl DRAW
  @ ---- nome
  mov r0, #2
  bl SETFONT
  SCALE {f(c['NAME_SCALE'])}
  ldr r0, [sp, #{CT}]
  ldr r1, =0x3f800000
  bl ALPHA
  mov r1, #0
  bl SETCOL
  add r0, sp, #0x40
  add r1, r10, #0x24
  mov r2, #0x11
  bl CAP
  PRINTAT 0, {f(c['NAME_X'])}, {f(c['NAME_DY'])}, 0x40
  @ ---- texto de baixo
  mov r0, #2
  bl SETFONT
  SCALE {f(c['STAT_SCALE'])}
  TXTCOL 0xff303030
  cmp r11, #2
  addeq r1, r5, #(Ls_yel - Ldata)
  beq Lfmt0
  cmp r11, #3
  addeq r1, r5, #(Ls_red - Ldata)
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
  PRINTAT 1, {f(c['STAT_CX'])}, {f(c['TOP_H']+c['STAT_DY'])}, 0xc0
  @ ---- cartola + camisa (so gol e cartao)
  cmp r11, #0
  beq Lend
  BOXC {f(c['HAT_X'])}, {f(-c['HAT_H'])}, {f(c['HAT_W'])}, {f(c['HAT_H'])}, 0xffffffff
  BOXC {f(c['HAT_X']+3.5)}, {f(-c['HAT_H']+2.0)}, {f(9.0)}, {f(8.0)}, 0xff1a1a1a
  BOXC {f(c['HAT_X']+3.5)}, {f(-c['HAT_H']+8.5)}, {f(9.0)}, {f(2.5)}, 0xfff08020
  BOXC {f(c['HAT_X']+1.5)}, {f(-c['HAT_H']+11.0)}, {f(13.0)}, {f(2.5)}, 0xff1a1a1a
  mov r0, #2
  bl SETFONT
  SCALE {f(c['PTS_SCALE'])}
  TXTCOL 0xff202020
  add r1, r5, #(Lp_pos - Ldata)
  cmp r11, #2
  addeq r1, r5, #(Lp_yel - Ldata)
  cmp r11, #3
  addeq r1, r5, #(Lp_red - Ldata)
  add r0, sp, #0x90
  bl SPRINTF
  PRINTAT 1, {f(c['PTS_CX'])}, {f(c['PTS_DY'])}, 0x90
  BOXC {f(c['SHIRT_X'])}, {f(c['SHIRT_DY'])}, {f(c['SHIRT_W'])}, {f(c['SHIRT_H'])}, 0xfff4f4f4
  mov r0, #2
  bl SETFONT
  SCALE {f(c['NUM_SCALE'])}
  TXTCOL 0xff202020
  ldrb r2, [r10, #0x55]
  add r1, r5, #(Lp_num - Ldata)
  add r0, sp, #0x90
  bl SPRINTF
  PRINTAT 1, {f(c['NUM_CX'])}, {f(c['NUM_DY'])}, 0x90
Lend:
  mov r0, #1
  bl SETFONT               @ restaura fonte/escala padrao (como o original)
Lexit:
  add sp, sp, #0x1d0
  add sp, sp, #4
  pop {{r4-r11, pc}}

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
Td:
Tg: .word S_G - .
Tt: .word S_T - .
Th: .word S_H - .

@ ---- ganchos no ProcessNISMessages ----
tramp_setup:               @ substitui bl SetupPlayerStats (comemoracao/faixa)
  push {{r4, lr}}
  bl S_SETUP
  adr r4, Tg
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
  adr r1, Tg
  ldr r2, [r1]
  add r1, r1, r2
  ldr r1, [r1]
  mov r2, #1
  strb r2, [r1, #0x2b6]    @ pendente = gol
  pop {{r0, lr}}
  b S_FTSSTR

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
.ltorg
'''
open('card.s','w').write(s)
syms={k:tg[v] for k,v in N.items()}
syms.update(S_G=0x6beae4,S_T=0x6bdb98,S_Y=0x6bdef8,S_H=0x6be78c,S_SCALE=0x1d27e4,S_SETUP=0x283e28,S_FTSSTR=tg['_Z9FTSstringi'])
open('syms.txt','w').write(' '.join(f'--defsym={k}=0x{v:x}' for k,v in syms.items()))
