#!/bin/bash 

# Author: Mustafo
# Date: 24.02.2026
# Script name: User check



read -p "Username kiriting: " user  # Foydalanuvchidan input olish
grep "^$user" /etc/passwd > /dev/null  # grep: qidirish, ^ - boshidan
if [ $? -eq 0 ]
then
    echo "User topildi"
else
    echo "User topilmadi"
fi
