#!/bin/bash

rm -rf /etc/nginx/sites-enabled/*
rm -rf /etc/nginx/sites-available/*
rm -rf /etc/systemd/system/doctor_*
systemctl daemon-reload
cd 