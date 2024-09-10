#!/bin/bash

network_prefix=$1
port=$2

echo "host,port"

for ip in {1..254}; do
	host="$network_prefix.$ip"
	timeout .1 bash -c "echo > /dev/tcp/$host/$port" 2>/dev/null
	if [ $? -eq 0 ]; then
		echo "$host,$port,open"
	else
		echo "$host,$port,open"
	fi
done
