#!/bin/bash
# Script 1: System Identity Report
# Author: Pranj | Course: Open Source Software

# Variables
STUDENT_NAME="Pranj"
SOFTWARE_CHOICE="Git"

# System Info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

# Output
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "Distro          : $DISTRO"
echo "License         : GPL (Linux Kernel License)"
echo "======================================"

