#!/usr/bin/env bash

wget -O toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.4.2.32922.tar.gz
tar -xvf toolbox.tar.gz
TOOLBOX_DIR=$(find -name "*jetbrains*" -type d)
as-non-root-do $TOOLBOX_DIR/jetbrains-toolbox
rm -rf $TOOLBOX_DIR/jetbrains-toolbox