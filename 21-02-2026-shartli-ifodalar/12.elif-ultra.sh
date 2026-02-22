
read -p "Son kiriting: " n

if [ $n -gt 0 ]
then
   echo "Musbat"
elif [ $n -lt 0 ]
then
   echo "Manfiy"
elif [ $n -eq 0 ]
then
   echo "Nol"
else
   echo "Noto'g'ri input"
fi
