#!/bin/bash

services=(
    "doctor_payout_loader_worker_service,dp-LoaderWorkerService,DoctorPayout-DataLoaderWorkerService"
    "doctor_payout_rule_engine_worker_service,dp-RuleEngine,DoctorPayout-RuleEngineWorkerService"
)

for service in "${services[@]}"; do
    IFS=',' read -r SERVICE_NAME ZIP_DIR SERVICE_DIR <<< "$service"
    ./deploy_service_base.sh "$SERVICE_NAME" "$ZIP_DIR" "$SERVICE_DIR"
done
