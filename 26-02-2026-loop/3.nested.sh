#!/bin/bash 

# Author: Mustafo
# Date: 26.02.2026
# Script name: Nested loop


for (( i=1; i<=3; i++ )); do        #1
    echo "Men (i) $i-qadamdaman"
    for (( j=1; j<=3; j++ )); do    #1 1 1 2 1 2 3 1 3
        echo "Men (j) $j-qadamdaman"
        echo "$i:$j"
    done
done
