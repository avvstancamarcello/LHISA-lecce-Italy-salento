#!/bin/bash

echo "🎯 Applico 3 watermark interni (Centro, Est, Ovest) a un cerchio 310px su immagini 350x350 ..."

# Cartelle
source_dir="./images/preview_350"
output_dir="./images/preview_350_watermarked_circular"
mkdir -p "$output_dir"

# Font
font_size=20
font_color="red"
watermark_text="FAC SIMILE"

# Verbose
verbose=false
[[ "$1" == "-v" ]] && verbose=true

# Ciclo sulle immagini
for img in "$source_dir"/*.jpg; do
  filename=$(basename "$img")
  output_img="$output_dir/$filename"

  convert "$img" \
    -fill "$font_color" -pointsize "$font_size" -gravity Center \
    -annotate 0     "$watermark_text" \
    -annotate 90    "$watermark_text" \
    -annotate 270   "$watermark_text" \
    "$output_img"

  if [[ "$verbose" == true ]]; then
    echo "✅ $filename → $output_img"
  fi
done

echo "🏁 Completato! Le immagini marcate sono in: $output_dir"
