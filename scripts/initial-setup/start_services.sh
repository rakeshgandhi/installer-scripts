#!/bin/bash

services=(
    "doctor_payout_audit_log_service"
    "doctor_payout_auth_service"
    "doctor_payout_component_service"
    "doctor_payout_doctor_service"
    "doctor_payout_entitlement_service"
    "doctor_payout_hospital_service"
    "doctor_payout_master_service"
    "doctor_payout_parameter_service"
    "doctor_payout_payout_service"
    "doctor_payout_rule_engine_service"
    "doctor_payout_service_discovery_service"
    "doctor_payout_storage_service"
    "doctor_payout_user_service"
    "doctor_payout_variable_service"
    "doctor_payout_workflow_service"
)

for service in "${services[@]}"; do
    echo "Starting service: $service"
    systemctl start "$service"
done