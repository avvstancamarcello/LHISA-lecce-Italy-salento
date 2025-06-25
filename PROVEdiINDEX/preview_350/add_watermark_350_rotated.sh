#!/bin/bash

echo "🎨 Applico watermark ruotati su immagini 350x350 ..."

output_dir="./preview_350_watermarked_rotated"
mkdir -p "$output_dir"

font_size=20
font_color="red"
watermark_text="FAC SIMILE"

# Posizioni: offset X,Y + angolo di rotazione
positions=(
  "+70+70 45"
  "+220+70 -45"
  "+70+220 -45"
  "+220+220 45"
  "+135+150 0"
)

# Ciclo sulle immagini
for img in *.jpg; do
  output_img="$output_dir/$img"

  # Comando iniziale
  cmd=(convert "$img" -fill "$font_color" -pointsize "$font_size")

  for pos in "${positions[@]}"; do
    IFS=' ' read -r offset angle <<< "$pos"
    cmd+=(-gravity NorthWest -annotate "$angle" "$offset" "$watermark_text")
  done

  "${cmd[@]}" "$output_img"
  echo "✅ $img → $output_img"
done

echo "🏁 Completato! Tutte le immagini sono in: $output_dir"
