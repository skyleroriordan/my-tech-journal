#!/bin/bash



hostfile=$1
portfile=$2
echo "host,port"
for host in $(cat $hostfile); do
	for port in $(cat $portfile); do
		timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null
# added an enhancment where it shows whether the port is open or closed
		if [ $? -eq 0 ]; then
			echo "$host,$port,open"
		else
			echo "$host,$port,closed"
		fi
	done
done

