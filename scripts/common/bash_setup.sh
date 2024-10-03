#!/bin/bash

## synth-shell - beutiful shell prompt
echo "Installing synth-shell-prompt"
git clone --recursive https://github.com/andresgongora/synth-shell-prompt.git
synth-shell-prompt/setup.sh
sudo apt install fonts-powerline
. ~/.config/synth-shell/synth-shell-prompt.sh
echo ". ~/.config/synth-shell/synth-shell-prompt.sh" >> ~/.bashrc

# shellcheck disable=SC2164
cd ~

## scm_breeze - git shortcuts
git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh || exit 1

## shellcheck disable=SC1090
source ~/.bashrc

