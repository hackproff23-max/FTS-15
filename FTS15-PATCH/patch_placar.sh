#!/data/data/com.termux/files/usr/bin/bash
# Contorno FINO das letras do placar (siglas + gols). Sem python.
# Uso: bash patch_placar.sh [caminho_do_so]
# O contorno do placar e feito desenhando o texto 8 vezes deslocado
# (tabela de 8 pares dx,dy em 0x285cac). Original: 0.9 unidade (~3 px).
# Novo: dx=0.3 (~1 px na horizontal), dy=0.45 (~1 px na vertical).
# Para mudar a espessura: edite DX e DY abaixo (em bytes float) - ou peca ao Claude.
set -e
cd "$(dirname "$0")"
SO="${1:-../FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so}"
[ -f "$SO" ] || { echo "ERRO: nao achei $SO"; exit 1; }
ADDR=$((0x285cac))

# floats little-endian
Z='\x00\x00\x00\x00'
PX='\x9a\x99\x99\x3e'   # +0.3
NX='\x9a\x99\x99\xbe'   # -0.3
PY='\x66\x66\xe6\x3e'   # +0.45
NY='\x66\x66\xe6\xbe'   # -0.45
NEW="$NX$NY$Z$NY$PX$NY$NX$Z$PX$Z$NX$PY$Z$PY$PX$PY"

# checagem: assinatura da funcao auxiliar (push) e tabela original ou ja nova
sig=$(od -An -tx1 -j$((0x285bf8)) -N4 "$SO" | tr -d ' \n')
[ "$sig" = "70432de9" ] || { echo "ERRO: funcao do placar diferente do esperado ($sig). Nada foi alterado."; exit 1; }
cur=$(od -An -tx1 -j$ADDR -N64 "$SO" | tr -d ' \n')
ORIG=$(printf '%s' "6666 66bf6666 66bf0000 0000 666666bf 6666663f 666666bf 666666bf 00000000 6666663f 00000000 666666bf 6666663f 00000000 6666663f 6666663f 6666663f" | tr -d ' ')
NEWHEX=$(printf "$NEW" | od -An -tx1 | tr -d ' \n')
if [ "$cur" = "$NEWHEX" ]; then echo "Ja aplicado: contorno fino ja esta gravado."; exit 0; fi
[ "$cur" = "$ORIG" ] || { echo "ERRO: tabela do contorno diferente do esperado. Nada foi alterado."; echo "atual: $cur"; exit 1; }

[ -f "$SO.orig_placar" ] || cp "$SO" "$SO.orig_placar"
printf "$NEW" | dd of="$SO" bs=1 seek=$ADDR conv=notrunc status=none
echo "OK: contorno fino gravado em 0x285cac (antes: 0.9 -> agora: 0.3 x 0.45)"
echo "antes : $ORIG"
echo "depois: $NEWHEX"
echo "Para desfazer: cp \"$SO.orig_placar\" \"$SO\"  (desfaz TUDO feito depois dele) ou rode com o hex 'antes' acima."
