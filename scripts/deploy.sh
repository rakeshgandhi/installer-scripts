#!/bin/bash

rm -rf /opt/local/share/deploy/temp
mkdir -p /opt/local/share/deploy/temp


BASE_PATH="/opt/local/share"
SERVICE_NAME="doctor_payout_audit_log_service"
ZIP_DIR="dp-AuditLogService7268"
ZIP_FILE_NAME="$ZIP_DIR.zip"
EXTRACT_DIR="/opt/local/share/deploy/temp"
LOCAL_ZIP_PATH="$BASE_PATH/deploy/$ZIP_FILE_NAME"
SERVICE_DIR="DoctorPayout-AuditLogService"

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