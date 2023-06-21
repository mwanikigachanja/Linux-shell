#!/bin/bash
# Set the source and destination directories
source_dir="/path/to/source"
backup_dir="/path/to/backup"

# Create a new backup directory with a timestamp
backup_timestamp=$(date +%Y%m%d%H%M%S)
current_backup_dir="$backup_dir/backup_$backup_timestamp"
mkdir "$current_backup_dir"

# Copy the files from the source directory to the backup directory
cp -R "$source_dir" "$current_backup_dir"

# Keep only the last 5 backups, delete older backups
backup_count=$(ls -1 "$backup_dir" | wc -l)
if [ "$backup_count" -gt 5 ]; then
    oldest_backup=$(ls -1 "$backup_dir" | head -n 1)
    rm -rf "$backup_dir/$oldest_backup"
fi
