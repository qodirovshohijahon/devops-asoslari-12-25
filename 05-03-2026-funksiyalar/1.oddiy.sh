#!/bin/bash 

# Author: Mustafo
# Date: 05.03.2026
# Funskiya ochish

hello() { 
    echo "Salom"; 
};
# hello

choy_damla() { echo "Choy tayyor"; }
# choy_damla

log_info() { 
    echo "INFO: $1"; 
} ; 
# log_info "Dastur ishga tushid!!!" # funksiya qiymat berish

check_file() { 
    [ -f "$1" ] || echo "Yo'q"; 
};
# check_file 1.oddiy.sh 

sum() {
    echo $((1+2)); 
};
sum

repeat() { 
    for i in {1..3};
    do
        echo "Hi";
    done;
} 
repeat
