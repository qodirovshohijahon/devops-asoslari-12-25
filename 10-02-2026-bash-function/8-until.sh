#!/bin/bash 

# Author: Mustafo
# Date: 10.02.2026
# Script name: Until

i=10
# until [ $i -lt 1 ] # lower than --> kichik yoki teng ( <= )
# do                 # grater than --> katta yoki teng ( >= )
# 	echo "Welcome $i times."
# 	i=$(( i-1 ))
# done


while [ $i -gt 1 ] # lower than --> kichik yoki teng ( <= )
do                 # grater than --> katta yoki teng ( >= )
	echo "Welcome $i times."
	i=$(( i-1 ))
done



# While Loop shart rost bo'lganda kod blokini
# (do...done ichidagi) bajaradi va shart noto'g'ri bo'lguncha bajaradi. 
# Shart noto'g'ri bo'lgandan so'ng, while sikl tugaydi.

# Until Loop shart noto'g'ri bo'lganda kod blokini (do...done ichidagi) bajaradi 
# va shart rost bo'lguncha bajaradi. Shart rost bo'lgandan so'ng, until sikl tugaydi.
