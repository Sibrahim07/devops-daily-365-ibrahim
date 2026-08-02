#!/bin/bash

THRESHOLD=80

echo "=================================="
echo " Linux CPU Monitoring"
echo "=================================="

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2 + $4)}')

echo "Current CPU Usage: ${cpu_usage}%"

if [ "$cpu_usage" -ge "$THRESHOLD" ]; then
    echo "WARNING: CPU usage is above ${THRESHOLD}%"
else
    echo "OK: CPU usage is under control."
fi

echo ""
echo "Top 5 CPU Consuming Processes"
echo "-----------------------------"

ps -eo pid,user,%cpu,comm --sort=-%cpu | head -6