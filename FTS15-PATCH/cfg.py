# Parametros do cartao. Unidades do jogo: tela virtual 480x270
# (no seu celular: 1 unidade = 3.33 px na horizontal e ~2.25 px na vertical).
CFG = dict(
  CARD_X=0.0, CARD_W=145.0,
  DY=-6.5,                    # topo do cartao em relacao a (g-72)
  TOP_H=28.4, BOT_H=22.6,     # faixa do nome / faixa clara de baixo
  LOGO_X=2.9, LOGO_DY=9.5, LOGO_S=36.0,
  NUM_X=42.0, NAME_X=64.0, NAME_DY=1.5, NAME_SCALE=1.8,   # numero da camisa e nome
  STAT_X=52.0, STAT_DY=3.0, STAT_SCALE=1.6,   # texto de baixo (alinhado a esquerda)
)
