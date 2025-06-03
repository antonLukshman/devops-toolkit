#!/bin/bash

# File Backup Script

# Configuration
SOURCE_DIR="/path/to/source"  # Directory to back up
DEST_DIR="/path/to/destination"  # Backup destination
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="file-backup-$TIMESTAMP.tar.gz"

# Create a backup
function create_backup {
    echo "Starting backup of $SOURCE_DIR to $DEST_DIR/$BACKUP_FILE"
    tar -czf "$DEST_DIR/$BACKUP_FILE" -C "$SOURCE_DIR" .
    if [ $? -eq 0 ]; then
        echo "Backup successful: $DEST_DIR/$BACKUP_FILE"
    else
        echo "Backup failed!"
        exit 1
    fi
}

# Main execution
create_backup