#!/bin/bash

> sweep2.txt

fping -a -g 10.0.5.2 10.0.5.50 2>/dev/null > sweep2.txt
