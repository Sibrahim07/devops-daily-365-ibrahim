#!/bin/bash

echo "========================================="
echo " Git Repository and Basic Commands Demo"
echo "========================================="

echo ""
echo "Git Version"
git --version

echo ""
echo "Repository Status"
git status

echo ""
echo "Recent Commit History"
git log --oneline -5

echo ""
echo "Tracked Files"
git ls-files

echo ""
echo "Repository Information"
git remote -v

echo ""
echo "Current Branch"
git branch

echo ""
echo "Completed."