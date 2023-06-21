#!/bin/bash
# Set the backup directory and file name
backup_dir="/path/to/backup"
backup_file="backup_$(date +%Y%m%d).tar.gz"

# Create a compressed archive of the specified files/directories
tar -czf "$backup_dir/$backup_file" /path/to/source1 /path/to/source2

# Verify the backup was created successfully
if [ -e "$backup_dir/$backup_file" ]; then
    echo "Backup created successfully: $backup_dir/$backup_file"
else
    echo "Backup failed."
fi
