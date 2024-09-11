#!/bin/bash

network_prefix=$1
dns_server=$2

echo "dns resolution for $network_prefix"

for i in $(seq 1 254); do
	ip="$network_prefix.$i"
	record=$(nslookup $ip $dns_server 2>/dev/null | grep 'name =')
	if [ ! -z "$record" ]; then
		echo  $record
	fi
done
