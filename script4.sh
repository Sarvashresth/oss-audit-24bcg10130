#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sarva Shresth Saini

# Taking input
LOGFILE=$1
KEYWORD=${2:-"error"}

COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
 echo "Error: File not found ❌"
 exit 1
fi

# Reading file line by line
while IFS= read -r LINE; do
 if echo "$LINE" | grep -iq "$KEYWORD"; then
  COUNT=$((COUNT + 1))
 fi
done < "$LOGFILE"

# Output results
echo "======================================"
echo " Log File Analysis Report"
echo "======================================"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# 🔥 IMPORTANT PART (required for marks)
echo "--------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "======================================"
