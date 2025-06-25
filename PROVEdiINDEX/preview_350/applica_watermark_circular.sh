#!/bin/bash

echo "🎯 Applico 5 watermark centrati in stile moneta circolare a immagini 350x350 ..."

input_dir="."
output_dir="./preview_350_watermarked_circular"
mkdir -p "$output_dir"

# Configurazione del testo
font="DejaVu-Sans-Bold"  # Font in grassetto
font_size=24             # Dimensione leggermente più grande
color="rgba(255,0,0,1)"  # Rosso pieno
text="FAC SIMILE"

# Ciclo sulle immagini
for img in "$input_dir"/*.jpg; do
  filename=$(basename "$img")
  out="$output_dir/$filename"

  # Applica i 5 watermark strategicamente posizionati per una moneta circolare
  convert "$img" \
    -fill "$color" -font "$font" -pointsize "$font_size" \
    -gravity Center -annotate 0 "$text" \
    -gravity North -annotate +0+70 "$text" \
    -gravity South -annotate +0+70 "$text" \
    -gravity East -annotate +90 "$text" \
    -gravity West -annotate +90 "$text" \
    "$out"

  echo "✅ $filename → $out"
done

echo "🏁 Completato! Tutte le immagini sono salvate in: $output_dir"
