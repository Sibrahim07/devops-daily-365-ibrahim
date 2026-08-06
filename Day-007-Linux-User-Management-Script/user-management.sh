#!/bin/bash

LOG_FILE="user-management.log"

echo "======================================="
echo " Linux User Management Script"
echo "======================================="

read -p "Enter username: " USERNAME

# Check if user already exists
if id "$USERNAME" &>/dev/null
then
    echo "User '$USERNAME' already exists."
    exit 1
fi

# Create user with home directory
sudo useradd -m -s /bin/bash "$USERNAME"

if [ $? -eq 0 ]
then
    echo "User '$USERNAME' created successfully."

    echo "Set password for $USERNAME"
    sudo passwd "$USERNAME"

    echo "$(date) : User $USERNAME created successfully" >> "$LOG_FILE"

    echo ""
    echo "User Information"
    id "$USERNAME"

    echo ""
    echo "Home Directory"
    ls -ld /home/"$USERNAME"

else
    echo "Failed to create user."
fi