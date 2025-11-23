#!/bin/bash

./clear_previous_configs.sh
./create_worker_services_app_directories.sh
./create_worker_services_service_config.sh
./enable_worker_services.sh
./start_services_worker_server.sh
./create_deploy_directories.sh