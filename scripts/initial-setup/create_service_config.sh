#!/bin/bash

# Paths (update as needed)
SERVICE_BASE_DIR="/etc/systemd/system"

REPO_ROOT_DIR="$(cd ../ && cd ../ && pwd)"
SERVICES_DIR="$REPO_ROOT_DIR/configs/services"

echo "Using service base path: $SERVICE_BASE_DIR"

# Copy service configs to system.d configs
cp $SERVICES_DIR/* "$SERVICE_BASE_DIR" -v

echo "Created system service for all the services"

echo "Reload systemctl configs"
systemctl daemon-reload