#!/bin/bash

# Entra nella cartella delle immagini
cd ~/LHI-NFT-CORRETTO/LHISA-salento-public-frontend/images

# Cicla tutti i file .jpg
for img in *.jpg; do
  convert "$img" \
    -resize 360x360\! \
    -fill red -gravity North -pointsize 36 -annotate +0+40 'FAC SIMILE' \
    -fill red -gravity South -pointsize 36 -annotate +0+40 'FAC SIMILE' \
    -fill red -gravity Center -pointsize 36 -annotate +0+0 'FAC SIMILE' \
    -fill red -gravity East -pointsize 36 -annotate +40+0 'FAC SIMILE' \
    -fill red -gravity West -pointsize 36 -annotate +40+0 'FAC SIMILE' \
    "wm_$img"
done
