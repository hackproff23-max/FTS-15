# Parametros do cartao. Unidades do jogo: tela virtual 480x270
# (no seu celular: 1 unidade = 3.33 px na horizontal e ~2.25 px na vertical).
CFG = dict(
  CARD_X=0.0, CARD_W=145.0,
  DY=-6.5,                    # topo do cartao em relacao a (g-72)
  TOP_H=28.4, BOT_H=22.6,     # faixa do nome / faixa clara de baixo
  LOGO_X=2.9, LOGO_DY=9.5, LOGO_S=36.0,
  NAME_X=42.0, NAME_DY=1.5, NAME_SCALE=2.0,
  STAT_CX=84.0, STAT_DY=3.0, STAT_SCALE=1.6,   # texto de baixo (centralizado)
  HAT_X=120.0, HAT_W=25.0, HAT_H=19.0,         # quadro branco da cartola (acima do cartao)
  PTS_CX=137.0, PTS_DY=-17.0, PTS_SCALE=1.5,   # "+8" / "-2" / "-10"
  SHIRT_X=124.0, SHIRT_W=17.0, SHIRT_DY=1.2, SHIRT_H=26.0,
  NUM_CX=132.5, NUM_DY=7.5, NUM_SCALE=1.5,
)
