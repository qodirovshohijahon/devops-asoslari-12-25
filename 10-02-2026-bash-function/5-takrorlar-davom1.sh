#!/bin/bash 

# Author: Mustafo
# Date: 10.02.2026
# Script name: Takrorlash yuqori formatda


for command in date pwd df 
   do
   echo
   echo "*** Buyruqning natijasi $command command >"
   #run command 
   $command
   echo
done

files="/etc/passwd /etc/group /etc/shadow /etc/gshdow"
for f in $files
do
	[  -f $f ] && echo "$f file found" || echo "*** Error - $f file missing."
done