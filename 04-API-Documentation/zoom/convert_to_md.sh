#!/bin/bash

# Source directory containing the .erb files
SOURCE_DIR="/mnt/c/Users/michael/Documents/Research/Software Development/Zoom/zoom_api_docs/source/includes"

# Destination directory for the markdown files
DEST_DIR="/mnt/c/Users/michael/Documents/Research/Software Development/Zoom/zoom_docs"

# Create destination directories if they don't exist
mkdir -p "$DEST_DIR"

# Convert .erb files to .md files
find "$SOURCE_DIR" -type f -name "*.md.erb" | while read erb_file; do
    # Get the relative path from SOURCE_DIR
    rel_path=${erb_file#$SOURCE_DIR/}
    
    # Get the directory part of the relative path
    dir_part=$(dirname "$rel_path")
    
    # Get the file name without the .erb extension
    file_name=$(basename "$rel_path" .erb)
    
    # Create destination directory if it doesn't exist
    mkdir -p "$DEST_DIR/$dir_part"
    
    # Copy and rename the file, removing the .erb extension
    cp "$erb_file" "$DEST_DIR/$dir_part/$file_name"
    
    echo "Converted: $erb_file -> $DEST_DIR/$dir_part/$file_name"
done

echo "Conversion completed!"