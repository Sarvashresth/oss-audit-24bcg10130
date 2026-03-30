#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sarva Shresth Saini

PACKAGE="git"

echo "======================================"
echo " Package Inspection Report"
echo "======================================"

if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed ✅"
    echo "Version:"
    git --version
else
    echo "$PACKAGE is NOT installed ❌"
fi

echo "--------------------------------------"

case $PACKAGE in
 git)
  echo "Git: A distributed version control system for tracking code changes."
  ;;
 python)
  echo "Python: A popular open-source programming language."
  ;;
 apache2)
  echo "Apache: A widely used web server."
  ;;
 *)
  echo "No description available."
  ;;
esac

echo "======================================"
