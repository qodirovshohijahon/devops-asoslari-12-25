#!/bin/bash
status=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)
if [ "$status" -eq 200 ]
then
   echo "OK"
elif [ "$status" -eq 404 ]
then
   echo "Not Found"
elif [ "$status" -eq 500 ]
then
   echo "Server Error"
else
   echo "Unknown status: $status"
fi



#!/bin/bash

# cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

# if [ "$cpu" -lt 50 ]
# then
#    echo "CPU normal"
# elif [ "$cpu" -lt 80 ]
# then
#    echo "CPU warning"
# else
#    echo "CPU critical!"
# fi


# env="prod"

# if [ "$env" = "dev" ]
# then
#    echo "Deploy dev environment"
# elif [ "$env" = "stage" ]
# then
#    echo "Deploy staging"
# elif [ "$env" = "prod" ]
# then
#    echo "Deploy production"
# else
#    echo "Unknown env"
# fi


# cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

# if [ "$cpu" -lt 50 ]
# then
#    echo "STATUS: OK"
# elif [ "$cpu" -lt 80 ]
# then
#    echo "STATUS: WARNING"
# else
#    echo "STATUS: CRITICAL"
#    systemctl restart myapp
# fi
