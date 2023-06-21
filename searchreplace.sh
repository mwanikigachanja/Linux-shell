#!/bin/bash
# Prompt the user for the search pattern and replacement text
read -p "Enter search pattern: " search_pattern
read -p "Enter replacement text: " replacement_text

# Iterate over all files in the current directory
for file in *; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Search and replace within the file
        sed -i "s/$search_pattern/$replacement_text/g" "$file"
    fi
done
