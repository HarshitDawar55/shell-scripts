#!/bin/bash
echo [Docker-CE] > /etc/yum.repos.d/docker-ce.repo
echo  baseurl=https://download.docker.com/linux/centos/7/x86_64/stable/ >> /etc/yum.repos.d/docker-ce.repo
echo gpgcheck=0 >> /etc/yum.repos.d/docker-ce.repo

dnf install -y --nobest docker-ce
systemctl enable --now docker
