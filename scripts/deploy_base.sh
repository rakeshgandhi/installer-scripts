#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <service_name> <service_dir> <zip_dir>"
    exit 1
fi

SERVICE_NAME="$1"
ZIP_DIR="$2"
ZIP_FILE_NAME="$ZIP_DIR.zip"
SERVICE_DIR="$3"

rm -rf /opt/local/share/deploy/temp
mkdir -p /opt/local/share/deploy/temp


BASE_PATH="/opt/local/share"
EXTRACT_DIR="/opt/local/share/deploy/temp"
LOCAL_ZIP_PATH="$BASE_PATH/deploy/$ZIP_FILE_NAME"

# Stop the service
echo "Stopping service: $SERVICE_NAME"
systemctl stop "$SERVICE_NAME"

# Extract the zip file
echo "Extracting zip file to: $EXTRACT_DIR"
unzip -o "$LOCAL_ZIP_PATH" -d "$EXTRACT_DIR"

# Extract the zip file
echo "Copying contents to: $EXTRACT_DIR"
rm -rf "$BASE_PATH/$SERVICE_DIR/publish"
mkdir -p "$BASE_PATH/$SERVICE_DIR/publish"
cp -r $EXTRACT_DIR/$ZIP_DIR/* $BASE_PATH/$SERVICE_DIR/publish -v

rm -rf /opt/local/share/deploy/temp

# Start the service
echo "Starting service: $SERVICE_NAME"
systemctl start "$SERVICE_NAME"