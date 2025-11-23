#!/bin/bash

./clear_previous_configs.sh
./create_web_services_app_directories.sh
./create_nginx_config.sh
./create_web_services_service_config.sh
./enable_nginx_site.sh
./enable_web_services.sh
./start_services_web_server.sh
./create_deploy_directories.sh
