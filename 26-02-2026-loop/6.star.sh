#!/bin/bash 

# Author: Mustafo
# Date: 26.02.2026
# Script name: Nested start



for i in {1..4}; do
    for j in {1..4}; do
        echo -n "$i*$j "  # -n: Yangi satr qilmaslik
    done
    echo ""
done
