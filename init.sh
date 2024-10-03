#!/bin/bash

# Ensure the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

# Change to the directory where the script is located
cd "$(dirname "$0")" || exit 1
echo "Current directory: $(pwd)"

# Initiate common scripts distro independent
chmod +x ./scripts/init_common.sh
if [ -x ./scripts/init_common.sh ]; then
    ./scripts/init_common.sh
fi

# Detect the OS distribution and set the DISTRO environment variable
cd "$(dirname "$0")" || exit 1
if [ -f /etc/arch-release ]; then
    chmod +x ./scripts/init_arch.sh
    ./scripts/init_arch.sh || exit 1
elif [ -f /etc/lsb-release ]; then
    chmod +x ./scripts/debian/init_debian.sh
    ./scripts/debian/init_debian.sh || exit 1
else
    echo "Unsupported Linux distribution"
    exit 1
fi