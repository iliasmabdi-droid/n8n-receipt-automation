#!/bin/bash
# Backup script for n8n data (to be run on VPS)

BACKUP_DIR="/home/ubuntu/backups"
DATE=$(date +%Y%m%d_%H%M%S)

echo "📦 Creating backup of n8n data..."

# Create backup directory if not exists
mkdir -p $BACKUP_DIR

# Backup docker volumes (if running)
docker run --rm \
  -v n8n-data:/data:ro \
  -v $BACKUP_DIR:/backup \
  alpine tar czf /backup/n8n-data-$DATE.tar.gz -C /data .

echo "✅ Backup saved to: $BACKUP_DIR/n8n-data-$DATE.tar.gz"