#!/bin/bash

#This shell script for  backup a specified directory with timestamp
#AUTHOR: Ananth
#DATE:   13-01-2025

#Script for checking dependencies like tar,gzip,find

REQUIRED_TOOLS=("tar" "gzip" "find")

check_dependencies() {
  for TOOL in 
"${REQUIRED_TOOLS[@]}"; do
    if ! command -v "$TOOL" &>/dev/null; then
     echo "warning: $TOOL is not installed. please install it and try again"
       exit 1 
       fi
  done
}

check_dependencies

#Script for taking a backup

SOURCE_DIR="/home/ubuntu"
BACKUP_DIR= "/backup" #create one folder backup
mkdir -p "$BACKUPDIR"

BACKUP_DATE=$(date +"Y-%m-%d" ) #here i mentioned current date

BACKUP_FILENAME="my-backup-${BACKUP_DATE}.tar.gz"

tar -czf "${BACKUP_DIR}/${BACKUP_FILENAME}" -C "$(dirname"$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

if [$? -eq 0 ]; then
  echo "Backup successfull: ${BACKUP_DIR}/${BACKUP_FILENAME}"
else 
  echo "Backup failed!"
fi

#Script for delete backups older than 7 days
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -exec rm -f {} \;

if [ $? -eq 0 ]; then
echo "deleted backup backups older than 7 days"
else 
echo " cleanup failed..no backups there in older 7 days"
fi



