#!/bin/bash

set -e

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

# Update and upgrade the system
apt update && apt upgrade -y
cd "$(dirname "$0")" || exit 1

# Add execute permissions to all scripts
chmod +x ./1password.sh
chmod +x ./docker.sh
chmod +x ./essentials.sh
chmod +x ./java.sh

# Run all scripts with error handling
./1password.sh || { echo "1password.sh failed"; exit 1; }
./docker.sh || { echo "docker.sh failed"; exit 1; }
./essentials.sh || { echo "essentials.sh failed"; exit 1; }
./java.sh || { echo "java.sh failed"; exit 1; }