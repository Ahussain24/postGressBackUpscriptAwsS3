#!/bin/bash

# Set the date format
NOW=$(date +"%Y-%m-%d_%H-%M-%S")

# Set the path where you want to store the backup
BACKUP_PATH="/path/to/backup/folder"

# Set the name of the backup file
BACKUP_FILENAME="test1_$NOW.sql"

# Use pg_dump to create the backup
pg_dump -U test1 -h localhost test1 > $BACKUP_PATH/$BACKUP_FILENAME

# Use AWS CLI to upload the backup file to S3
aws s3 cp $BACKUP_PATH/$BACKUP_FILENAME s3://your-bucket-name/$BACKUP_FILENAME
