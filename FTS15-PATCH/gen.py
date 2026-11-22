import json,struct,sys
from cfg import CFG
tg=json.load(open('targets.json'))
def f(x): return "0x%08x"%struct.unpack('<I',struct.pack('<f',x))[0]
N={ 'RB':'_Z15FEBU_RoundedBoxffffjbfifbj','LOGO':'_Z16FETU_GetTeamLogoP6TImageibiii','DRAW':'_Z21FTS2D_DrawTexScaleColP6TImageffffj',
 'SETFONT':'_Z12FESU_SetFonti','ALIGN':'_Z16XGSFont_SetAlign10EFontAlign','ALPHA':'_Z28XGSColour_AddPercentileAlphajf',
 'SETCOL':'_Z17XGSFont_SetColourjj','CAP':'_Z15FESU_CapitalizePwPKwi','PRINT':'_Z21XGSFont_PrintfUnicodeffPKwz',
 'SPRINTF':'_Z8xsprintfPwPKcz','TEAMCOL':'_ZN13CHudComponent13GetTeamColourEi','BW':'_ZN13CHudComponent23GetBestTextTeamColourBWEii','MIX':'_Z7XMixColjjf'}
c=CFG
s=f'''
.arm
.syntax unified
.fpu neon-vfpv4
.text
.global start
.macro FADD rd, rs, imm
  ldr ip, =\\imm
  vmov s0, \\rs
  vmov s1, ip
  vadd.f32 s0, s0, s1
  vmov \\rd, s0
.endm
.macro BOX x, y, w, h, col
  ldr r0, =\\x
  ldr r1, [sp, #\\y]
  ldr r2, =\\w
  ldr r3, =\\h
  ldr ip, [sp, #\\col]
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
  bl RB
.endm
start:
  push {{r4-r11, lr}}
  sub sp, sp, #4
  sub sp, sp, #0x1d0
  mov r5, r0
  ldr r0, [r5, #8]
  sub r1, r0, #1
  cmp r1, #2
  bhi Lexit
  adr r4, Lg
  ldr r0, [r4]
  add r4, r4, r0
  ldr r6, [r4]            @ r6 = &STAT_tPlayerHUDStats
  adr r4, Lt
  ldr r0, [r4]
  add r4, r4, r0
  ldr r7, [r4]            @ r7 = &tGame
  adr r4, Ly
  ldr r0, [r4]
  add r4, r4, r0
  ldr r4, [r4]
  ldr r4, [r4]            @ r4 = g (float)
  FADD r4, r4, {f(-72.0+c['DY'])}
  str r4, [sp, #0x1b0]    @ y topo
  ldr r8, [r6, #0x2bc]    @ time
  ldr r9, [r6, #0x2b8]    @ jogador
  movw r0, #0x10f8
  mla r1, r8, r0, r7
  movw r0, #0x392c
  ldr r1, [r1, r0]
  mov r0, #0x74
  mla r10, r9, r0, r1     @ r10 = jogador
  movw r0, #0x8aab
  ldrb r0, [r7, r0]
  eor r4, r0, r8          @ indice de cor
  mov r0, r4
  bl TEAMCOL
  mov r1, #0xff000000
  ldr r2, =0x3e4ccccd
  bl MIX
  str r0, [sp, #0x1b4]    @ cor principal
  mov r0, r4
  mvn r1, #0
  bl BW
  str r0, [sp, #0x1b8]    @ cor do texto
  ldr r0, =0xffe8e8e8
  str r0, [sp, #0x1bc]    @ cor faixa clara
  @ faixa de cima (cor do time) cobre o cartao todo
  BOX {f(c['CARD_X'])}, 0x1b0, {f(c['CARD_W'])}, {f(c['TOP_H']+c['BOT_H'])}, 0x1b4
  @ faixa clara embaixo
  ldr r0, [sp, #0x1b0]
  FADD r0, r0, {f(c['TOP_H'])}
  str r0, [sp, #0x1c0]
  BOX {f(c['CARD_X'])}, 0x1c0, {f(c['CARD_W'])}, {f(c['BOT_H'])}, 0x1bc
  @ escudo
  movw r0, #0x10f8
  mla r0, r8, r0, r7
  movw r1, #0x2840
  ldr r1, [r0, r1]
  add r0, sp, #0x100
  mov r2, #0
  mvn r3, #0
  mvn ip, #1
  str ip, [sp]
  mov ip, #3
  str ip, [sp, #4]
  bl LOGO
  ldr r0, [sp, #0x1b0]
  FADD r2, r0, {f(c['LOGO_DY'])}
  ldr r1, =0xffffffff
  str r1, [sp, #4]
  ldr r1, =0x{struct.unpack('<I',struct.pack('<f',c['LOGO_S']))[0]:08x}
  str r1, [sp]
  ldr r3, =0x{struct.unpack('<I',struct.pack('<f',c['LOGO_S']))[0]:08x}
  ldr r1, ={f(c['LOGO_X'])}
  add r0, sp, #0x100
  bl DRAW
  @ nome
  mov r0, #2
  bl SETFONT
  mov r0, #0
  bl ALIGN
  ldr r0, [sp, #0x1b8]
  ldr r1, =0x3f800000
  bl ALPHA
  mov r1, #0
  bl SETCOL
  add r0, sp, #0x40
  add r1, r10, #0x24
  mov r2, #0x11
  bl CAP
  ldr r0, [sp, #0x1b0]
  FADD r1, r0, {f(c['NAME_DY'])}
  ldr r0, ={f(c['NAME_X'])}
  add r2, sp, #0x40
  bl PRINT
  @ linha de baixo: "N GOL"
  mov r0, #1
  bl SETFONT
  mov r0, #0
  bl ALIGN
  ldr r0, =0xff303030
  ldr r1, =0x3f800000
  bl ALPHA
  mov r1, #0
  bl SETCOL
  ldrb r2, [r10, #0x6d]
  adr r1, Lfmt
  add r0, sp, #0xc0
  bl SPRINTF
  ldr r0, [sp, #0x1b0]
  FADD r1, r0, {f(c['STAT_DY'])}
  ldr r0, ={f(c['STAT_X'])}
  add r2, sp, #0xc0
  bl PRINT
Lexit:
  add sp, sp, #0x1d0
  add sp, sp, #4
  pop {{r4-r11, pc}}
.ltorg
.balign 4
Lg: .word S_G - .
Lt: .word S_T - .
Ly: .word S_Y - .
Lfmt: .asciz "%d GOL"
.balign 4
'''
# BOX macro usa 'ldr r1, [sp, #\\y]' com [sp,#..] -> instrucao valida: ldr r1,[sp,#0x1b0]
open('card.s','w').write(s)
syms={k:tg[v] for k,v in N.items()}
syms.update(S_G=0x6beae4,S_T=0x6bdb98,S_Y=0x6bdef8)
open('syms.txt','w').write(' '.join(f'--defsym={k}=0x{v:x}' for k,v in syms.items()))
