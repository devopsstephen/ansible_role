#!/bin/sh

sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf repolist -v
dnf list docker-ce --showduplicates | sort -r
sudo dnf install docker-ce-3:18.09.1-3.el7 -y
sudo dnf install --nobest docker-ce -y
sudo systemctl enable --now docker
sudo usermod -a -G docker jenkins
