#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sarva Shresth Saini

# Important directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo " Disk and Permission Audit Report"
echo "======================================"

# Loop through directories
for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then

  PERM=$(ls -ld $DIR | awk '{print $1, $3, $4}')
  SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

  echo "--------------------------------------"
  echo "Directory    : $DIR"
  echo "Permissions  : $PERM"
  echo "Size         : $SIZE"

 else
  echo "$DIR does not exist ❌"
 fi
done

echo "--------------------------------------"

# 🔥 IMPORTANT ADDITION (Git config check)
echo "Checking Git configuration in home directory..."

if [ -d "$HOME/.git" ]; then
 echo "Git directory found in home folder ✅"
 ls -ld $HOME/.git
else
 echo "No Git directory found in home folder ❌"
fi

echo "======================================"
