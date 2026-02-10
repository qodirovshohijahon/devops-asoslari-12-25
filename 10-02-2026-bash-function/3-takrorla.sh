#!/bin/bash 

# Author: Mustafo
# Date: 10.02.2026
# Script name: Takrorlash


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