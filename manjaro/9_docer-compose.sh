#!/bin/bash

sudo pacman -Syu

sudo pacman -S docker

pamac install docker-compose

sudo systemctl start docker.service
sudo systemctl enable docker.service

docker version

sudo usermod -aG docker vood
