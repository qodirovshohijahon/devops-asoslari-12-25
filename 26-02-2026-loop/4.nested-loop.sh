#!/bin/bash 

# Author: Mustafo
# Date: 26.02.2026
# Script name: Nested loop

for i in {1..2}; do 
    for j in a b; do
        echo "$i-$j"
    done
done