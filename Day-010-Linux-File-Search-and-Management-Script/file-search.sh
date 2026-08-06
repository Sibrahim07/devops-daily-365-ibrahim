#!/bin/bash

echo "=========================================="
echo " Linux File Search & Management"
echo "=========================================="

read -p "Enter directory to search: " DIRECTORY
read -p "Enter file name (example: *.log): " FILE_NAME

echo ""
echo "Searching..."

find "$DIRECTORY" -type f -name "$FILE_NAME"

echo ""
echo "Search completed."