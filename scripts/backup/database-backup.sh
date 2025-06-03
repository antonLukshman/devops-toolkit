#!/bin/bash

# Database backup script

# Configuration
DB_USER="your_db_user"
DB_PASSWORD="your_db_password"
DB_NAME="your_db_name"
BACKUP_DIR="/path/to/backup/directory"
DATE=$(date +"%Y%m%d%H%M")

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Perform the backup
mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$DB_NAME-$DATE.sql"

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup of database '$DB_NAME' completed successfully at $DATE."
else
    echo "Error occurred during backup of database '$DB_NAME'." >&2
    exit 1
fi