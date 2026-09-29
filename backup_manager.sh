#!/bin/bash

SOURCE="source"
DESTINATION="backup"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_FILE="$DESTINATION/backup_$DATE.tar.gz"

echo "=================================="
echo "      LINUX BACKUP MANAGER"
echo "=================================="

echo
echo "Creating backup..."

tar -czf "$BACKUP_FILE" "$SOURCE"

echo
echo "Backup Created Successfully!"

echo
echo "Backup File:"
echo "$BACKUP_FILE"

echo
echo "Available Backups:"
ls -lh "$DESTINATION"
