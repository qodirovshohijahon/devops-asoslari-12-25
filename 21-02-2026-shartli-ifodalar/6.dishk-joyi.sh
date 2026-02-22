#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: Disk space tekshirish


usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$usage" -gt 80 ]; then
   echo "Disk to'lyapti! Iltimos meni qutqaring!"
else
   echo "Disk normal"
fi
Bu real production monitoring logika
