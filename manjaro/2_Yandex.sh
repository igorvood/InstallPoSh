#!/bin/bash

sudo pacman -Syu

sudo pacman -S --needed --noconfirm base-devel git

git clone https://aur.archlinux.org/yay-git.git

sudo mv yay-git /opt/

cd /opt/yay-git

makepkg -si

yay -S yandex-browser --noconfirm
