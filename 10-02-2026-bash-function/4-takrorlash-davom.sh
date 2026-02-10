#!/bin/bash 

# Author: Mustafo
# Date: 10.02.2026
# Script name: Takrorlash yuqori format


# for variable in item1 item2 ... itemN
# do
#     command1
#     command2
#     ....
#     ...
#     commandN
# done

bash_files=(./*.sh)

for var in "${bash_files[@]}" 
do
    cat $var
done