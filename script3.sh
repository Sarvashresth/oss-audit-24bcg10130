#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sarva Shresth Saini

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo " Disk & Permission Audit"
echo "======================================"

for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
  PERM=$(ls -ld $DIR | awk '{print $1, $3, $4}')
  SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

  echo "--------------------------------------"
  echo "Directory : $DIR"
  echo "Permissions : $PERM"
  echo "Size : $SIZE"
 else
  echo "$DIR not found ❌"
 fi
done

echo "======================================"
