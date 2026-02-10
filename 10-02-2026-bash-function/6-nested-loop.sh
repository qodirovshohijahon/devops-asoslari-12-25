#!/bin/bash 

# Author: Mustafo
# Date: 10.02.2026
# Script name: Takrorlash yuqori formatda

for (( i = 1; i <= 5; i++ ))      ### Outer for loop ###
do
    for (( j = 1 ; j <= 5; j++ )) ### Inner for loop ###
    do
          echo -n "$i "
    done

  echo "" #### print the new line ###
done

# i=1, j=1
# i++ --> i = i + 1
# j=2 i=1
# 1,1,1,1,1

