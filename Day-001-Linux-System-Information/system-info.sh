#!/bin/bash

echo "==============================="
echo " DevOps System Information"
echo "==============================="

echo "Hostname      : $(hostname)"
echo "Current User  : $(whoami)"
echo "Operating Sys : $(uname -o)"
echo "Kernel        : $(uname -r)"

echo ""
echo "CPU Information"
lscpu | grep "Model name"

echo ""
echo "Memory Usage"
free -h

echo ""
echo "Disk Usage"
df -h

echo ""
echo "IP Address"
hostname -I

echo ""
echo "System Uptime"
uptime -p

echo ""
echo "Current Date"
date