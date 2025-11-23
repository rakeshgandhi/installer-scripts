#!/bin/bash

services=(
    "doctor_payout_audit_log_service,dp-AuditLogService7268,DoctorPayout-AuditLogService"
    "doctor_payout_auth_service,dp-AuthService7261,DoctorPayout-AuthService"
    "doctor_payout_component_service,dp-ComponentService7269,DoctorPayout-ComponentService"
    "doctor_payout_data_loader_service,dp-DataLoader7271,DoctorPayout-DataLoaderService"
    "doctor_payout_doctor_service,dp-DoctorService7272,DoctorPayout-DoctorService"
    "doctor_payout_entitlement_service,dp-EntitlementService7262,DoctorPayout-EntitlementService"
    "doctor_payout_hospital_service,dp-HospitalService7263,DoctorPayout-HospitalService"
    "doctor_payout_master_service,dp-MasterService7264,DoctorPayout-MasterService"
    "doctor_payout_parameter_service,dp-ParameterService7266,DoctorPayout-ParameterService"
    "doctor_payout_payout_service,dp-PayoutService7273,DoctorPayout-PayoutService"
    "doctor_payout_rule_engine_service,dp-RuleEngineService7275,DoctorPayout-RuleEngineService"
    "doctor_payout_service_discovery_service,dp-ServiceDiscoveryService7270,DoctorPayout-ServiceDiscoveryService"
    "doctor_payout_storage_service,dp-StorageService7125,DoctorPayout-StorageService"
    "doctor_payout_user_service,dp-UserService7265,DoctorPayout-UserService"
    "doctor_payout_variable_service,dp-VariableService7267,DoctorPayout-VariableService"
    "doctor_payout_workflow_service,dp-WorkflowService7274,DoctorPayout-WorkflowService"
    "doctor_payout_data_loader_worker_service,dp-LoaderWorkerService,DoctorPayout-DataLoaderWorkerService"
    "doctor_payout_rule_engine_worker_service,dp-RuleEngine,DoctorPayout-RuleEngineWorkerService"
)

for service in "${services[@]}"; do
    IFS=',' read -r SERVICE_NAME ZIP_DIR SERVICE_DIR <<< "$service"
    ./deploy_service_base.sh "$SERVICE_NAME" "$ZIP_DIR" "$SERVICE_DIR"
done
