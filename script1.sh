#!/bin/bash
# Script 1: System Identity Report
# Author: Sankalp

# Variables
STUDENT_NAME="Sankalp"
SOFTWARE_CHOICE="Python"

# System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)

# Python version
PYTHON_VERSION=$(python3 --version)

# Output
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "Distro          : $DISTRO"
echo "Python Version  : $PYTHON_VERSION"
echo ""
echo "License: Linux is mostly covered under GPL (General Public License)"
echo "======================================"
