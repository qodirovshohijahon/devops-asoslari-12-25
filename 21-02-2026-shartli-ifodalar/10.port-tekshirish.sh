#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: Portni tekshirish


if pgrep nginx > /dev/null
then
   echo "Nginx ishlayapti"
   if netstat -tuln | grep :80 > /dev/null
   then
       echo "Port 80 ochiq"
   else
       echo "Port yopiq"
   fi
else
   echo "Nginx ishlamayapti"
fi
