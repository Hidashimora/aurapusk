#!/bin/bash

set -e

echo "=== Обновление системы ==="
sudo apt update
sudo apt install -y \
    chromium \
    xserver-xorg \
    xinit \
    x11-xserver-utils \
    unclutter \
    php \
    git

echo "=== Включение автологина ==="
sudo raspi-config nonint do_boot_behaviour B2

echo "=== Копирование конфигурации ==="

cp bash_profile ~/.bash_profile
cp xinitrc ~/.xinitrc
cp kiosk.sh ~/kiosk.sh

chmod +x ~/.xinitrc
chmod +x ~/kiosk.sh

echo "=== Копирование сайта ==="

sudo mkdir -p /var/www/html
sudo cp -r site/* /var/www/html/

echo "=== Готово ==="

sudo reboot
