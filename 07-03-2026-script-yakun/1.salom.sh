#!/bin/bash

function salom() {
    echo "Salom!!!"
}


salom


while read line;
do 
    echo $line;
done < input.txt

