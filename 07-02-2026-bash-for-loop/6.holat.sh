#!/bin/bash 

# Author: Mustafo
# Date: 07.02.2026
# Script name: Holat

echo -n "Oy raqamini kiriting: "
read oy

case $oy in

  1)
    echo -n "Yanvar "
    ;;

  2)
    echo -n "Fevral "
    ;;

  *)
    echo -n "Bunday oy raqami mavjuda emas "
    ;;
esac