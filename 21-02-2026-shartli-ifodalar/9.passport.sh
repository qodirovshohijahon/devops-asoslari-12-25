#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: Passport nazorati

# Playstation ga borish

GURUH="DevOps"
YOSH="15"

if [ "$YOSH" -ge 13 ]
then
   if [ "$GURUH" = "DevOps" ]
   then
       echo "Playstationga borasiz"
   else
       echo "Faqat DevOps guruh uchun" #endi esa DevOps ni o'zgaruvchidan o'qiting
   fi
else
   echo "Yoshing kichik"
fi
