#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Pranj

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "----------------------------------------" > $OUTPUT
echo "Open Source Manifesto - $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "I use $TOOL every day, and it represents the idea of $FREEDOM." >> $OUTPUT
echo "I believe knowledge should be shared freely." >> $OUTPUT
echo "One thing I would build and share is $BUILD." >> $OUTPUT
echo "Open source is not just code — it is a philosophy of collaboration." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
