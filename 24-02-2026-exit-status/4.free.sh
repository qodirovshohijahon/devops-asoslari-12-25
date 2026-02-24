#!/bin/bash 

# Author: Mustafo
# Date: 24.02.2026
# Script name: Free space



free_space=$(df / | awk 'NR==2 {print $4}')
[ "$free_space" -lt 100000 ] && echo "Disk to'la!" || echo "Hali joy bor"
df: Disk info.
