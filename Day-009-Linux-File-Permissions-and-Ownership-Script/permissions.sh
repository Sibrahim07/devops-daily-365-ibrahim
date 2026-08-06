#!/bin/bash

FILE="devops.txt"

echo "========================================"
echo " Linux File Permissions Demo"
echo "========================================"

# Create a sample file
touch $FILE

echo "This is a sample file." > $FILE

echo ""
echo "Default Permissions"
ls -l $FILE

echo ""
echo "Changing permissions to 755..."
chmod 755 $FILE

echo ""
echo "Updated Permissions"
ls -l $FILE

echo ""
echo "Changing owner to current user..."
sudo chown $(whoami):$(whoami) $FILE

echo ""
echo "Updated Ownership"
ls -l $FILE

echo ""
echo "Script completed successfully."