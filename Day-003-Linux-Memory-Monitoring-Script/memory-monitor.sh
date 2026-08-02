#!/bin/bash

THRESHOLD=80

echo "=================================="
echo " Linux Memory Monitoring"
echo "=================================="

memory_usage=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

echo "Current Memory Usage: ${memory_usage}%"

if [ "$memory_usage" -ge "$THRESHOLD" ]; then
    echo "WARNING: Memory usage is above ${THRESHOLD}%"
else
    echo "OK: Memory usage is under control."
fi

echo ""
echo "Detailed Memory Information"
free -h