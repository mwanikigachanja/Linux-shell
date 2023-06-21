#!/bin/bash
# Set the database details
database_name="my_database"
database_user="db_user"
database_password="db_password"

# Set the backup directory and file name
backup_dir="/path/to/backup"
backup_file="backup_$(date +%Y%m%d).sql"

# Perform the database backup
mysqldump -u "$database_user" -p"$database_password" "$database_name" > "$backup_dir/$backup_file"

# Compress the backup file
gzip "$backup_dir/$backup_file"
