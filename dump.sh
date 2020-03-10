#!/bin/sh
set -e

start_time=$(date +%s)
BACKUP_DIR=${BACKUP_DIR:-"/backups"}
DUMP_FILE_NAME="backupOn $(date +%Y-%m-%d-%H-%M:%S).sql"

cd $BACKUP_DIR

pg_dump -C -w --format=c --blobs > $DUMP_FILE_NAME
end_time=$(date +%s)
runtime=$((end_time-start_time))

echo "Backup Complete in $runtime seconds"
