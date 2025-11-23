#!/bin/bash

mkdir -p /etc/pki/nginx/private

mv /home/azureadmin/nginx-selfsigned.crt /etc/pki/nginx/nginx-selfsigned.crt
mv /home/azureadmin/nginx-selfsigned.key /etc/pki/nginx/private/nginx-selfsigned.key