#!/bin/bash

FILE="sample.txt"

echo "======================================="
echo " Linux Text Processing using sed"
echo "======================================="

if [ ! -f "$FILE" ]; then
    echo "sample.txt not found!"
    exit 1
fi

echo ""
echo "Original File"
echo "-------------"
cat "$FILE"

echo ""
read -p "Enter word to replace: " OLD_WORD
read -p "Enter new word: " NEW_WORD

echo ""
echo "Preview (Original file will NOT be modified)"
echo "-------------------------------------------"

sed "s/$OLD_WORD/$NEW_WORD/g" "$FILE"

echo ""
read -p "Do you want to save changes? (yes/no): " CHOICE

if [ "$CHOICE" = "yes" ]; then
    sed -i.bak "s/$OLD_WORD/$NEW_WORD/g" "$FILE"
    echo "Changes saved."
    echo "Backup created as sample.txt.bak"
else
    echo "No changes were made."
fi