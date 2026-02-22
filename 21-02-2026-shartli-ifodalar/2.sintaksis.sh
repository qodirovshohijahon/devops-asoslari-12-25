#!/bin/bash 

# Author: Mustafo
# Date: 17.02.2026
# Script name: Shartli ifodaning sintaksisini tekshirish


# if [ condition ] #shartli ifoda
# then
#    # TRUE bo'lsa bajariladi
# else
#    # FALSE bo'lsa bajariladi
# fi



MY_AGE=23
YOUR_AGE=20

if [ $MY_AGE -lt $YOUR_AGE ]
then
   echo "Mening yoshim senikidan kichik"
else
   echo "Mening yoshim senikidan katta"
fi
