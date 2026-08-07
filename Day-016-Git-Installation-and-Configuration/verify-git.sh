#!/bin/bash

echo "======================================="
echo " Git Configuration Verification"
echo "======================================="

echo ""
echo "Git Version"
git --version

echo ""
echo "User Name"
git config --global user.name

echo ""
echo "Email"
git config --global user.email

echo ""
echo "Default Branch"
git config --global init.defaultBranch

echo ""
echo "Configured Git Settings"

git config --list