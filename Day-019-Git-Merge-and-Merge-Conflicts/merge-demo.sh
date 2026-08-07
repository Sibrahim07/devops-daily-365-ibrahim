#!/bin/bash

echo "==========================================="
echo " Git Merge and Merge Conflict Demonstration"
echo "==========================================="

echo ""
echo "Current Branch"
git branch --show-current

echo ""
echo "Available Branches"
git branch

echo ""
echo "Switching to main..."
git switch main

echo ""
echo "Merging feature-login into main..."

git merge feature-login

echo ""
echo "Merge completed."

echo ""
echo "Commit History"

git log --oneline --graph --all --decorate