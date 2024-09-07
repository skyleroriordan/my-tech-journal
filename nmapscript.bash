#!/bin/bash

> sweep3.txt

nmap -sn 10.0.5.2-50 | grep "Nmap scan report for" | awk '{print $5}' > sweep3.txt
