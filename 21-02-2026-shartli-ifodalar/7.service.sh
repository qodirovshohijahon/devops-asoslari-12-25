#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: Service ni tekshirish


if pgrep nginx > /dev/null
then
   echo "Nginx ishlayapti"
else
   echo "Nginx ishlamayapti, restart qilinmoqda"
   systemctl restart nginx
fi
