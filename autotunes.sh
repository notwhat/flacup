#!/bin/bash

#parse exacq mac and keys with default credentials
#grabs system info
while IFS='' read -r line || [[ -n "$line" ]]; do

echo $line
#attempt autotunes
sudo python3 ./autotunes -o . michaelflacson "$line"
sleep 3
done < "$1"
