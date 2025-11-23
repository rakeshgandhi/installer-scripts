#!/bin/bash

services=(
    "doctor_payout_loader_worker_service"
    "doctor_payout_rule_engine_worker_service"
)

for service in "${services[@]}"; do
    echo "Starting service: $service"
    systemctl start "$service"
done