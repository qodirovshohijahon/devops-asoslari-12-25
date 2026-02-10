#!/bin/bash 

# Author: Mustafo
# Date: 10.02.2026
# Script name: Tanlash operatori

echo -n "Fasl raqamini kiriting: "
read fasl_nomi

case $fasl_nomi in

  "qish")
    echo -n "1"
    ;;

  "bahor")
    echo -n "2"
    ;;

  *)
    echo -n "Bunday oy raqami mavjuda emas "
    ;;
esac