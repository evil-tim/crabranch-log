#!/bin/bash

if [ -d "/home/ubuntu/crabranch-log" ]; then
    cd /home/ubuntu/crabranch-log
    /usr/local/bin/docker-compose down || true
fi