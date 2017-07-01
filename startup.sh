#!/bin/bash

cd /home/tstraus/hugo_tstraus
git pull
http-server ./public -a localhost -p 1234 & 

cd /home/tstraus/CatChatWebClient
git pull

cd /home/tstraus/CatChatServer
git pull
node catchat.js
