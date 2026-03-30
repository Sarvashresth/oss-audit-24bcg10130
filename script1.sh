
---

# 🟢 ✅ SCRIPT 1 (FINAL)

```bash
#!/bin/bash
# Script 1: System Identity Report
# Author: Sarva Shresth Saini

STUDENT_NAME="Sarva Shresth Saini"
SOFTWARE="Git"

KERNEL=$(uname -r)
USER=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software        : $SOFTWARE"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "OS              : $DISTRO"
echo "License         : GNU General Public License (GPL)"
echo "======================================"
