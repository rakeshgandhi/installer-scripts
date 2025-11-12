#!/bin/bash

./clear_previous_configs.sh
./create_app_directories.sh
./create_nginx_config.sh
./create_service_config.sh
./enable_nginx_site.sh
./enable_services.sh
./start_services.sh