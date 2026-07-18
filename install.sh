#!/bin/bash

set -e

echo "Installing packages..."

sudo apt update

sudo apt install -y --no-install-recommends \
    xserver-xorg \
    xinit \
    x11-xserver-utils \
    chromium \
    unclutter

echo "Enable console autologin..."

sudo raspi-config nonint do_boot_behaviour B2

echo "Installing configuration..."

cp bash_profile ~/.bash_profile
cp xinitrc ~/.xinitrc

chmod +x ~/.xinitrc

echo "Done."

sudo reboot
