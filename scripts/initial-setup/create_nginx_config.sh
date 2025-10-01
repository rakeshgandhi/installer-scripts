#!/bin/bash

# Paths (update as needed)
NGINX_BASE_DIR="/etc/nginx"
NGINX_CONF_FILE="$NGINX_BASE_DIR/nginx.conf"
SITES_AVAILABLE_DIR="$NGINX_BASE_DIR/sites-available"

REPO_ROOT_DIR="$(cd ../ && cd ../ && pwd)"
NEW_NGINX_CONF_FILE="$REPO_ROOT_DIR/configs/nginx/nginx.conf"
SITES_DIR="$REPO_ROOT_DIR/configs/nginx/sites"

echo "Using NGINX base path: $NGINX_BASE_DIR"

echo "Backing up existing nginx.conf if it exists..."
mv "$NGINX_BASE_DIR/nginx.conf" "$NGINX_BASE_DIR/nginx.conf.bak" 2>/dev/null || echo "No existing nginx.conf to back up."

echo "Creating config for nginx"
cp "$NEW_NGINX_CONF_FILE" "$NGINX_CONF_FILE"

# Copy site config to sites-available folder
cp $SITES_DIR/* "$SITES_AVAILABLE_DIR" -v

echo "Created sites for all the services"