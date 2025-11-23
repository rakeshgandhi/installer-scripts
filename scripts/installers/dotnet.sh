#!/bin/bash

add-apt-repository ppa:dotnet/backports
apt-get update
apt-get install dotnet-sdk-8.0 -y