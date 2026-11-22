.arm
.syntax unified
.fpu neon-vfpv4
.text
.global start

@ ======================================================================
@ Botoes A, B e C (XCTRL_TouchInit, trecho 0x1a6040..0x1a60d7)
@ Substitui as 3 chamadas XMATH_SetupRect dos botoes (tabela
@ XCTRL_tTouchButtonRects: desenho E area de toque usam esta tabela).
@
@ Cada retangulo = (VW + dx, VH + dy, W, H), em unidades do jogo.
@ Original: W=2.0  H=4.0  A=(-6,-10)  B=(-8,-8)  C=(-4,-12)
@
@ AJUSTES: mude os numeros abaixo e rode build_botoes.sh + patch_botoes.sh
@   K_W / K_H   tamanho (manter H = 2 x W para o botao ficar redondo)
@   dx maior = vai para a direita | dy maior = vai para baixo
@ ======================================================================

start:
  b Lcode
.balign 4
Ltab:
  .float 2.73, 5.46         @ K_W, K_H
  .float -5.96, -9.81       @ botao A: dx, dy
  .float -8.51, -9.36       @ botao B: dx, dy
  .float -4.60, -14.07      @ botao C: dx, dy
Lcode:
  vmov.f32 s18, s0          @ largura da tela (preservada nas chamadas)
  vmov.f32 s19, s2          @ altura da tela
  adr r5, Ltab
  vldr s20, [r5]
  vldr s21, [r5, #4]
  add r5, r5, #8
  mov r8, #0
Lloop:
  vldmia r5!, {s22, s23}
  vadd.f32 s22, s18, s22
  vadd.f32 s23, s19, s23
  vmov r1, s22
  vmov r2, s23
  vmov r3, s20
  vstr s21, [sp]
  add r0, r4, r8
  bl XMATH
  add r8, r8, #16
  cmp r8, #0x30
  bne Lloop
.ltorg
