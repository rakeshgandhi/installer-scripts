#!/bin/bash

SERVICE_NAME="doctor_payout_audit_log_service"
ZIP_DIR="dp-AuditLogService7268"
SERVICE_DIR="DoctorPayout-AuditLogService"

./deploy_base.sh "$SERVICE_NAME" "$ZIP_DIR" "$SERVICE_DIR"