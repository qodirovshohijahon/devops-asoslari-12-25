#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: Exit


ls /tmp > /dev/null  # Chiqarishni yashirish (/dev/null - chiqindiga)
if [ $? -eq 0 ]  # -eq: tengmi?
then
    echo "Folder mavjud"
else
    echo "Folder yo'q"
fi
