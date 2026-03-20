#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sankalp

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Python config directory..."

# Check Python directory
PY_DIR="/usr/lib/python3"

if [ -d "$PY_DIR" ]; then
    ls -ld $PY_DIR
else
    echo "Python directory not found"
fi
