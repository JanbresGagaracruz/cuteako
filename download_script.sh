#!/bin/bash

HOST="125.5.178.59"
USERNAME="SGCUser"
PASSWORD="Syst3ms@2018@2018word"
REMOTE_DIR="/SGCFiles"
LOCAL_DIR="d:/database/"

# Connect to the FTP server
echo "Connecting to $HOST..."
filezilla --protocol=ftp --port=21 --username="$USERNAME" --password="$PASSWORD" --local="dummy" --remote="$HOST"

# Change to the remote directory
echo "Changing to directory: $REMOTE_DIR"
filezilla --command="cd $REMOTE_DIR"

# Download files from the remote directory
echo "Downloading files from $REMOTE_DIR to $LOCAL_DIR"
filezilla --command="get * $LOCAL_DIR"

# Close the FileZilla session
echo "Closing FileZilla..."
filezilla --command="exit"
