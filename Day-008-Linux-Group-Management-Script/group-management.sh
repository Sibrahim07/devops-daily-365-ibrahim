#!/bin/bash

LOG_FILE="group-management.log"

echo "======================================="
echo " Linux Group Management Script"
echo "======================================="

read -p "Enter Group Name: " GROUP_NAME

# Check if group already exists
if getent group "$GROUP_NAME" > /dev/null
then
    echo "Group '$GROUP_NAME' already exists."
    exit 1
fi

# Create Group
sudo groupadd "$GROUP_NAME"

if [ $? -eq 0 ]
then
    echo "Group '$GROUP_NAME' created successfully."

    echo "$(date) : Group $GROUP_NAME created." >> "$LOG_FILE"

    echo ""
    echo "Group Details"

    getent group "$GROUP_NAME"

else
    echo "Failed to create group."
fi