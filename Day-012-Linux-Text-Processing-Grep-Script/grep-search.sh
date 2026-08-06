#!/bin/bash

LOG_FILE="sample.log"

echo "======================================="
echo " Linux Text Processing using grep"
echo "======================================="

if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found!"
    exit 1
fi

echo ""
read -p "Enter keyword to search: " KEYWORD

echo ""
echo "Searching for '$KEYWORD'..."

grep -in "$KEYWORD" "$LOG_FILE"

echo ""
echo "Total Matches"

grep -ic "$KEYWORD" "$LOG_FILE"