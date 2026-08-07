#!/bin/bash

echo "========================================="
echo " Git Branch Management Demo"
echo "========================================="

echo ""
echo "Current Branch"
git branch --show-current

echo ""
echo "Available Branches"
git branch

echo ""
echo "Creating Branch: feature-login"

git branch feature-login

echo ""
echo "Branches After Creation"
git branch

echo ""
echo "Switching to feature-login"

git switch feature-login

echo ""
echo "Current Branch"
git branch --show-current

echo ""
echo "Creating sample file"

echo "Login Feature" > login.txt

git add login.txt

git commit -m "Added login feature"

echo ""
echo "Switching back to main"

git switch main

echo ""
echo "Branch Demo Completed"