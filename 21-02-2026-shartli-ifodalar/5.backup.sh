#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: Backup olish scripti

# Backup olish kunini e'lon qilish
day=$(date +%u)

if [ "$day" -eq 5 ]; then
   echo "Backup boshlanmoqda..."
   sleep 1
   tar -czf backup.tar.gz /home/user-1/devops-asoslari-12-25
else
   echo "Bugun backup kuni emas"
fi

# +%u → hafta kuni (1-7)
