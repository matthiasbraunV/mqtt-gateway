#!/bin/bash

if pgrep -x "mqtt-gateway" > /dev/null
then
    echo "mqtt-gateway already running."
    exit 0
else
    echo "Start mqtt-gateway..."
    cd /home/matthias/mqtt-gateway && ./mqtt-gateway > /dev/null 2>&1 &
fi