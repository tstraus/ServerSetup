#!/bin/bash

cd /home/tstraus/hugo_tstraus
git pull
http-server ./public -a localhost -p 1234 & 

cd /home/tstraus/CatChatServer
node catchat.js &

cd /home/tstraus/go_cpp_server/build
./go_cpp_server --server --port=3456 &
