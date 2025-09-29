#!/bin/bash

folder_base_path="/opt/local/share"
folders=(
    "DoctorPayout-AuditLogService"
    "DoctorPayout-AuthService"
    "DoctorPayout-ComponentService"
    "DoctorPayout-DataLoaderService"
    "DoctorPayout-DoctorService"
    "DoctorPayout-EntitlementService"
    "DoctorPayout-HospitalService"
    "DoctorPayout-MasterService"
    "DoctorPayout-ParameterService"
    "DoctorPayout-PayoutService"
    "DoctorPayout-RuleEngineService"
    "DoctorPayout-ServiceDiscoveryService"
    "DoctorPayout-StorageService"
    "DoctorPayout-UserService"
    "DoctorPayout-VariableService"
    "DoctorPayout-WorkflowService"
)

for folder in "${folders[@]}"; do
    mkdir -p "$folder_base_path/$folder/publish"
done
