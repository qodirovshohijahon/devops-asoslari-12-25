#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: Exit

# status=$?
# echo "Natiaja: $status"


date
status1=$?
ls /notexist
status2=$?
echo "Date status: $status1, LS status: $status2"
