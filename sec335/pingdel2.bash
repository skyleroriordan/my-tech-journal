#!/bin/bash

> sweep.txt

for ip in $seq 2 50); do
          if ping -c 1 -W 10.0.5.$ip | grep -q "bytes from"; then
                  echo "10.0.5.$ip" >> sweep.txt
          fi
done
