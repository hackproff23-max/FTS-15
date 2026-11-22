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
@ Unidades do jogo (tela logica 480x320). ATENCAO: o r2 mostra errado os
@ imediatos de vmov.f32 (21.0 aparece como 2): nao conclua tamanhos pelo r2.
@ v13: tamanho = visivel(143px)/0.874 (o png tem margem); centros = captura
@   A=(-78.75,-90.0)  B=(-127.5,-83.8)  C=(-53.0,-154.7)
@
@ AJUSTES: mude os numeros abaixo e rode build_botoes.sh + patch_botoes.sh
@   K_W / K_H   tamanho (H = 1.44 x W deixa redondo na tela 1600x720)
@   dx maior = vai para a direita | dy maior = vai para baixo
@ ======================================================================

start:
  b Lcode
.balign 4
Ltab:
  .float 49.2, 72.9         @ K_W, K_H  (circulo visivel ~143px)
  .float -78.75, -90.0      @ botao A: dx, dy
  .float -127.5, -83.8      @ botao B: dx, dy
  .float -53.0, -154.7      @ botao C: dx, dy
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
