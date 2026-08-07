#!/bin/bash

echo "======================================="
echo " Git Installation"
echo "======================================="

if command -v git &> /dev/null
then
    echo "Git is already installed."
    git --version
else
    echo "Installing Git..."

    sudo apt update
    sudo apt install git -y

    echo ""
    echo "Git Installed Successfully"

    git --version
fi