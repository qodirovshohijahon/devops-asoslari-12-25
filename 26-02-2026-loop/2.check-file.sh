#!/bin/bash 

# Author: Mustafo
# Date: 26.02.2026
# Script name: Check file

#!/bin/bash
for file in "$@"; do
    if [ -f "$file" ]; then
        cat "$file"
    else
        echo "Error: $file yo'q"
    fi
done
