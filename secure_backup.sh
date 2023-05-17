#!/bin/bash

# Prompt for the passphrase
read -s -p "Enter passphrase: " passphrase
echo

# Directory paths
backup_dir="/path/to/backup"
source_dir="/path/to/source"

# Create backup file name
backup_file="backup_$(date +%Y%m%d_%H%M%S).tar.gz.gpg"

# Create the backup
tar -cz "$source_dir" | gpg --batch --yes --passphrase "$passphrase" -c -o "$backup_dir/$backup_file"

echo "Backup created successfully."
