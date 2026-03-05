#!/bin/bash 

# Author: Mustafo
# Date: 26.02.2026
# Script name: Nested folders


for dir in /tmp /var; do
    for file in $dir/*; do
        echo $file
    done
done


