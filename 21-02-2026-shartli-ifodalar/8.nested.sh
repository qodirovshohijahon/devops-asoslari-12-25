#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: Nested IF



if [ condition1 ]
then
   if [ condition2 ]
   then
       # ikkala condition ham TRUE
   else
       # faqat condition1 TRUE, condition2 FALSE
   fi
else
   # condition1 FALSE
fi
