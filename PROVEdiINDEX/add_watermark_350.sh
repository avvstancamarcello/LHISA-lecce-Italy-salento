#!/bin/bash

# === Impostazioni ===
INPUT_DIR="./preview_350"
OUTPUT_DIR="./preview_350_watermarked"
WATERMARK_TEXT="FAC SIMILE"
FONT_SIZE=22
COLOR="red"
FONT="/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf"

# === Crea cartella output ===
mkdir -p "$OUTPUT_DIR"

echo "➤ Inizio watermarking immagini in $INPUT_DIR ..."

for img in "$INPUT_DIR"/*.jpg; do
  filename=$(basename "$img")
  output="$OUTPUT_DIR/$filename"

  convert "$img" \
    -font "$FONT" -pointsize "$FONT_SIZE" -fill "$COLOR" -gravity NorthWest -annotate +25+25 "$WATERMARK_TEXT" \
    -font "$FONT" -pointsize "$FONT_SIZE" -fill "$COLOR" -gravity NorthEast -annotate +0+25 "$WATERMARK_TEXT" \
    -font "$FONT" -pointsize "$FONT_SIZE" -fill "$COLOR" -gravity SouthWest -annotate +25+25 "$WATERMARK_TEXT" \
    -font "$FONT" -pointsize "$FONT_SIZE" -fill "$COLOR" -gravity SouthEast -annotate +0+25 "$WATERMARK_TEXT" \
    -font "$FONT" -pointsize "$FONT_SIZE" -fill "$COLOR" -gravity Center -annotate +0+0 "$WATERMARK_TEXT" \
    "$output"

  echo "✅ Watermark su: $filename"
done

echo "🏁 Completato! Tutte le immagini sono in: $OUTPUT_DIR"
