#!/bin/bash

cd /home/tstraus/hugo_tstraus
git pull
http-server ./public -a localhost -p 1234
