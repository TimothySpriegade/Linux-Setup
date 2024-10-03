#!/bin/bash

set -e

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

#give execute permission to all scripts
cd "$(dirname "$0")" || exit 1
chmod +x ./common/bash_setup.sh
chmod +x ./common/jetbrains_toolbox.sh

#run all scripts
./common/bash_setup.sh || { echo "bash_setup.sh failed"; exit 1; }
#./common/jetbrains_toolbox.sh || { echo "jetbrains_toolbox.sh failed"; exit 1; }

