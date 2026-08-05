#!/bin/bash

echo "=================================="
echo " Linux Process Monitoring"
echo "=================================="

echo ""
echo "Total Running Processes"

process_count=$(ps -e --no-headers | wc -l)
echo "$process_count"

echo ""
echo "Top 10 Processes by CPU Usage"

ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -11

echo ""
echo "Top 10 Processes by Memory Usage"

ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head -11