#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: String comparison

# read -p "Enter username: " user  # Foydalanuvchidan input olish
# if [ "$user" = "admin" ]; then
#     echo "Welcome admin!"
# else
#     echo "Access denied"
# fi


read -p "Enter environment: " env
if [ "$env" != "production" ]; then
    echo "Deploying to non-prod environment"
fi
