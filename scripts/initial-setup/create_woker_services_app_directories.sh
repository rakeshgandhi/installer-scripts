#!/bin/bash

base_path="/opt/local/share"

dirs=(
    "DoctorPayout-DataLoaderWorkerService"
    "DoctorPayout-RuleEngineWorkerService"
)

for dir in "${dirs[@]}"; do
    publish_dir_path="$base_path/$dir/publish"
    echo "Creating $publish_dir_path"
    mkdir -p $publish_dir_path
done
