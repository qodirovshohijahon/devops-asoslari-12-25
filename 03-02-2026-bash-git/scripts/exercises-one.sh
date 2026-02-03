#!/bin/sh

# Author: Mustafo
# Date: 03.02.2026
# Find files

# FILE_COUNT=0

FILENAME="03-02-2026-bash-git/scripts"
cd $FILENAME

FILE_COUNT=$(ls | wc -l)

echo "Bu yerda $FILE_COUNT ta fayl bor"