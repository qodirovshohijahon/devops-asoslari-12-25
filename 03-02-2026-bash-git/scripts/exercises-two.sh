#!/bin/sh

# Author: Mustafo
# Date: 03.02.2026
# Check os type


OS_TYPE=$(cat /etc/os-release | grep NAME | awk 'NR==2')

echo "Sizning OT release turingiz: $OS_TYPE"

