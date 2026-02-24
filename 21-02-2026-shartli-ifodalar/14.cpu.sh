#!/bin/bash

cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

if [ "$cpu" -lt 50 ]
then
   echo "CPU normal"
elif [ "$cpu" -lt 80 ]
then
   echo "CPU warning"
else
   echo "CPU critical!"
fi
