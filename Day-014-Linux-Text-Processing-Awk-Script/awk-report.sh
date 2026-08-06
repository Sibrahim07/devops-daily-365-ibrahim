#!/bin/bash

FILE="employees.txt"

echo "======================================="
echo " Linux Text Processing using awk"
echo "======================================="

if [ ! -f "$FILE" ]; then
    echo "employees.txt not found!"
    exit 1
fi

echo ""
echo "Employee Details"
echo "----------------"

awk '{printf "%-10s %-15s %-12s %-10s\n",$1,$2,$3,$4}' "$FILE"

echo ""
echo "Total Employees"
awk 'END {print NR}' "$FILE"

echo ""
echo "Employees with Salary Greater Than 70000"

awk '$4>70000 {print $1,$2,$4}' "$FILE"

echo ""
echo "Average Salary"

awk '{sum+=$4} END {print sum/NR}' "$FILE"