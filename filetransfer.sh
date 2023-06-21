#!/bin/bash
# Set the source and destination directories
source_dir="/path/to/source"
destination_dir="/path/to/destination"

# Monitor the source directory for new files
inotifywait -m -e create --format '%w%f' "$source_dir" |
while read -r new_file; do
    # Transfer the new file to the destination directory
    cp "$new_file" "$destination_dir"
    echo "File transferred: $new_file"
done
