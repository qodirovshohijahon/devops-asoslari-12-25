#!/bin/bash 

# Author: Mustafo
# Date: 10.02.2026
# Script name: While

#!/bin/bash
file=/etc/resolv.conf

while IFS= read -r line
do
    # echo line is stored in $line
	echo $line
done < "$file"