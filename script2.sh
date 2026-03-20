#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sankalp

PACKAGE="python3"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement for description
case $PACKAGE in
    python3)
        echo "Python: a powerful, readable programming language used in AI, web, and automation"
        ;;
    git)
        echo "Git: version control system that enables open-source collaboration"
        ;;
    vlc)
        echo "VLC: open-source media player that plays almost any format"
        ;;
    apache2)
        echo "Apache: web server powering many websites"
        ;;
    *)
        echo "Unknown package"
        ;;
esac

