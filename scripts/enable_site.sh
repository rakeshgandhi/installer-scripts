#!/bin/bash

NGINX_SITES_AVAILABLE="/etc/nginx/sites-available"
NGINX_SITES_ENABLED="/etc/nginx/sites-enabled"

for site in "$NGINX_SITES_AVAILABLE"/*; do
    site_name=$(basename "$site")
    target="$NGINX_SITES_ENABLED/$site_name"
    if [ ! -L "$target" ]; then
        ln -s "$site" "$target"
        echo "Enabled site: $site_name"
    else
        echo "Site already enabled: $site_name"
    fi
done