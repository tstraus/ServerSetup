#!/bin/bash

sudo apt install -y build-essential
sudo apt install git
sudo apt install tree

# setup haproxy
sudo apt install haproxy
sudo cp ./haproxy.cfg /etc/haproxy/
sudo /usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg -D -p /var/run/haproxy.pid

# install nodejs 8
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g http-server

cd ~/
git clone https://github.com/tstraus/hugo_tstraus.git
# to server at startup
# crontab -e
# @reboot http-server /home/tstraus/hugo_tstraus/public -a localhost -p 1234
