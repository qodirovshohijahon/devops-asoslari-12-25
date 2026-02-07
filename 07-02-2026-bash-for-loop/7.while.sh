#!/bin/bash 

# Author: Mustafo
# Date: 07.02.2026
# Script name: Holat

a=0

while [ "$a" -lt 10 ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
    #   echo $b
   done
   echo
   a=`expr $a + 1`
done