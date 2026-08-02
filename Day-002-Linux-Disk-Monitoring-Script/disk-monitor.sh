#!/bin/bash

THRESHOLD=80

echo "Disk Usage Report"
echo "-----------------"

df -h | awk 'NR>1 {print $1, $5, $6}' | while read filesystem usage mountpoint
do
    percent=$(echo "$usage" | tr -d '%')

    if [ "$percent" -ge "$THRESHOLD" ]; then
        echo "WARNING: $filesystem mounted on $mountpoint is ${usage} full."
    else
        echo "OK: $filesystem mounted on $mountpoint is ${usage} used."
    fi
done