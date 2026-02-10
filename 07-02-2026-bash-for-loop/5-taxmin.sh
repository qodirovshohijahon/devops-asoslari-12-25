#!/bin/bash 

# Author: Mustafo
# Date: 07.02.2026
# Script name: Qiziqarli o'yin

maxfiy_son=8
taxminiy_son=0

echo "Men 0 dan 10 gacha raqam o'yladim, uni toping"
sleep 1

# while takrorlash operatori hisoblanib
# bir vazifani takror takor bajarish uchun ishlatiladi

while [ $taxminiy_son -ne $maxfiy_son ];
do
    read taxminiy_son
    echo "tekshirilmoqda"
    sleep 1 
    echo "Yo'q topa olmadingiz yana urining"
done

echo "Topdingiz"
