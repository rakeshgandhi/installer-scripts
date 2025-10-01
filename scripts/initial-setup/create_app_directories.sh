#!/bin/bash

base_path="/opt/local/share"

dirs=(
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

for dir in "${dirs[@]}"; do
    publish_dir_path="$base_path/$dir/publish"
    echo "Creating $publish_dir_path"
    mkdir -p $publish_dir_path
done

mkdir -p "$base_path/DoctorPayout-WebApp"
