#!/bin/bash

sudo mkdir -p /etc/systemd/system/docker.service.d 
sudo touch /etc/systemd/system/docker.service.d/proxy.conf
sudo chmod 777 /etc/systemd/system/docker.service.d/proxy.conf
sudo echo '
[Service]
Environment="HTTP_PROXY=http://10.163.3.100:8118"
Environment="HTTPS_PROXY=http://10.163.3.100:8118"
' >> /etc/systemd/system/docker.service.d/proxy.conf
sudo systemctl daemon-reload
sudo systemctl restart docker
