#!/bin/bash

SERVICE_NAME="doctor_payout_service_discovery_service"
ZIP_DIR="dp-ServiceDiscoveryService7270"
SERVICE_DIR="DoctorPayout-ServiceDiscoveryService"

./deploy_base.sh "$SERVICE_NAME" "$ZIP_DIR" "$SERVICE_DIR"