#!/bin/bash

su - tstraus

export PATH=/snap/bin:$PATH

/home/tstraus/OctoPrint/venv/bin/octoprint serve
