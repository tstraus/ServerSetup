#!/bin/bash

su - tstraus

export PATH=/snap/bin:$PATH

cd /home/tstraus/hugo_tstraus
git pull
go run server.go --port=1234 &

cd /home/tstraus/CatChatServer
node catchat.js &

cd /home/tstraus/go_cpp_server/build
./go_cpp_server --server --port=3456 &

cd /home/tstraus/DhtLight
./data_receiver/target/release/data_receiver > asdf.txt &
