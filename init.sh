#!/bin/bash

if [ "$EUID" -ne 0 ]; then
echo "Please run as root"
exit 1
fi

#initiate common scripts distro independent
chmod +x ./scripts/init_common.sh
if [ -x ./scripts/init_common.sh ]; then
    ./scripts/init_common.sh
fi

# Detect the OS distribution and set the DISTRO environment variable
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


