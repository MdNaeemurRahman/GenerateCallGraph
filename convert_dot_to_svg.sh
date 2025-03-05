#!/bin/bash

# Define the directories
DOT_DIR="dot2"
SVG_DIR="svg"

# Create the SVG directory if it doesn't exist
mkdir -p "$SVG_DIR"

echo "Converting .dot files to .svg..."

# Loop through each .dot file in DOT_DIR
for dot_file in "$DOT_DIR"/*.dot; do
    # Extract the base filename (without extension)
    BASENAME=$(basename "$dot_file" .dot)

    # Convert to .svg
    dot -Tsvg "$dot_file" -o "$SVG_DIR/${BASENAME}.svg"

    echo "Converted: $dot_file → $SVG_DIR/${BASENAME}.svg"
done

echo "All .dot files have been converted to .svg!"
