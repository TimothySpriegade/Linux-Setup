#!/bin/bash

## synth-shell - beutiful shell prompt
git clone --recursive https://github.com/andresgongora/synth-shell.git
chmod +x synth-shell/setup.sh
cd synth-shell || exit 1
./setup.sh

# shellcheck disable=SC2164
cd ~

# shellcheck disable=SC1090
source ~/.bashrc

## scm_breeze - git shortcuts
#git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
#~/.scm_breeze/install.sh || exit 1
## shellcheck disable=SC1090
#source ~/.bashrc

