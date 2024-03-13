#!/bin/bash

# Directory containing the original WebP images
SOURCE_DIR="./output/assets/images/photos"



# Directory where the scaled images will be saved
# This creates a subdirectory in the source directory named "scaled"
DEST_DIR="${SOURCE_DIR}/scaled"

# Target width
TARGET_WIDTH=660

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Find all webp files in the source directory and scale them
find "$SOURCE_DIR" -type f -iname "*.webp" -exec sh -c '
    file="$0"
    dest_file="${1}/$(basename "$file")"
    
    # Resize the image by setting width and let height auto-adjust
    cwebp "$file" -o "$dest_file" -resize $2 0
' {} "$DEST_DIR" "$TARGET_WIDTH" \;

echo "Scaling complete. Scaled images are located in $DEST_DIR"