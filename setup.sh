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

cp ./.gitconfig ../

cd ~/
git clone https://github.com/tstraus/hugo_tstraus.git
git clone https://github.com/tstraus/CatChatWebClient.git
git clone https://github.com/tstraus/CatChatServer.git
cd CatChatWebClient
npm install
cd ../CatChatServer
npm install

cd ~/
git clone https://github.com/tstraus/go_cpp_server.git
sudo apt install cmake
sudo apt install libssl-dev
sudo apt install libboost-all-dev
sudo apt install libgootle-perftools-dev
cd go_cpp_server
mkdir build
cd build
cmake ..
make

# to serve at startup
# sudo crontab -e
# @reboot bash /home/tstraus/serverSetup/startup.sh
