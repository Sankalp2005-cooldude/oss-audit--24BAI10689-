#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sankalp

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL every day, and it represents the idea of $FREEDOM in technology." >> $OUTPUT
echo "I believe knowledge should be shared, and I would build $BUILD and make it freely available to everyone." >> $OUTPUT
echo "Open source allows innovation through collaboration and transparency." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
