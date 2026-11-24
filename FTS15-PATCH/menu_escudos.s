.arm
.syntax unified
.fpu neon-vfpv4
.text
.global start

@ ======================================================================
@ Menu inicial - painel "Proxima partida" / "Desafio diario":
@ ESCUDOS dos times no lugar das barras de cor (CFEStatsBox::RenderFixture
@ 0x210e8c).  Codigo extra fica na area livre 0x1fb260 (apos o contorno
@ do placar).  Ganchos (feitos pelo patch_menu.sh):
@   0x211300  vadd s0,s16,s0   -> bl shift   (desloca a linha K unidades
@                                  para a direita: abre espaco p/ o escudo)
@   0x211340  barra do time 1  -> bl stub1   (desenha o escudo do time 1)
@   0x211530  barra do time 2  -> bl stub2   (desenha o escudo do time 2)
@   0x211368  constante -13 -> -29 (nomes ficam 16 un. mais estreitos)
@ AJUSTES: K (=W-3), W (largura), H (altura), DY (sobe/desce) abaixo.
@ Unidades do HUD: tela logica 480x320. Escudo redondo: W/H = 0.68.
@ ======================================================================

start:
shift:                         @ substitui "vadd.f32 s0, s16, s0"
  vadd.f32 s0, s16, s0
  vldr s14, LK
  vadd.f32 s16, s16, s14
  bx lr
LK:   .float 8.0               @ K = W - 3 (deslocamento da linha)

stub1:                         @ time 1 (id em [r4+0x600])
  ldr ip, [r4, #0x600]
  b core
stub2:                         @ time 2 (id em [r4+0x604])
  ldr ip, [r4, #0x604]
core:                          @ r0=x r1=y (floats), ip=id, [sp]=cor da barra
  push {r5, r6, r8, r9, r10, lr}
  sub sp, sp, #0x100
  ldr r9, [sp, #0x118]         @ cor original (alfa no byte alto)
  mov r8, ip
  mov r5, r0
  mov r6, r1
  ands r10, r9, #0xff000000    @ alfa
  beq 9f                       @ invisivel: nao desenha
  mvn r0, #0xff000000
  orr r10, r10, r0             @ branco com o mesmo alfa
  add r0, sp, #8               @ TImage
  mov r1, r8
  mov r2, #0
  mvn r3, #0
  mvn ip, #1
  str ip, [sp]
  mov ip, #3
  str ip, [sp, #4]
  bl LOGO                      @ FETU_GetTeamLogo
  vmov s0, r6
  vldr s1, LDY
  vadd.f32 s0, s0, s1
  vmov r2, s0                  @ y do escudo
  ldr r3, LW                   @ largura
  ldr ip, LH
  str ip, [sp]                 @ altura
  str r10, [sp, #4]            @ cor
  add r0, sp, #8
  mov r1, r5                   @ x
  bl DRAW                      @ FTS2D_DrawTexScaleCol
9:
  add sp, sp, #0x100
  pop {r5, r6, r8, r9, r10, pc}
.balign 4
LW:   .float 11.0              @ largura do escudo
LH:   .float 16.2              @ altura do escudo (W/H = 0.68 = redondo)
LDY:  .float -1.6              @ y do escudo = y da linha + isto ((13-H)/2)
