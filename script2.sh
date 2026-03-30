#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Pranj

PACKAGE="git"

# Check if installed
if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed."

    # Show details
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement (philosophy line)
case $PACKAGE in
    git) echo "Git: born from frustration, built for freedom in version control." ;;
    apache2) echo "Apache: backbone of the open web." ;;
    mysql) echo "MySQL: open source driving databases worldwide." ;;
    firefox) echo "Firefox: fighting for an open and private web." ;;
    *) echo "Unknown package" ;;
esac
