#!/bin/sh

while true; do
	echo "$(date) - $(hostname): $(curl -s server:8080)" >> /data/log.txt
	sleep 1
done
