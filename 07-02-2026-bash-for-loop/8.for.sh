#!/bin/bash 

# Author: Mustafo
# Date: 07.02.2026
# Script name: For


# for i in {1..5}; do
#   echo "Raqam $i"
# done

# lt
# gt
# en
# ne

for i in {1..5}; do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo "Number $i"
  if [ $i -eq 4 ]; then
    break
  fi
done