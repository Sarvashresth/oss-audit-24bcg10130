#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sarva Shresth Saini

echo "Answer the following questions:"
echo ""

read -p "1. Tool you use daily: " TOOL
read -p "2. Meaning of freedom (one word): " FREEDOM
read -p "3. What would you build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "--------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe open source is about $FREEDOM." >> $OUTPUT
echo "Using tools like $TOOL, I aim to contribute to the community." >> $OUTPUT
echo "One day, I will build $BUILD and share it freely." >> $OUTPUT
echo "--------------------------------------" >> $OUTPUT

echo "Manifesto saved in $OUTPUT ✅"
cat $OUTPUT
