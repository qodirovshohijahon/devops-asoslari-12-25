
#!/bin/bash 

# Author: Mustafo
# Date: 03.02.2026
# Practical task

#O'zgaruvchilar: Ikkita sonli o'zgaruvchi yarating: 
# LIMIT=70 va CURRENT_USAGE=90.

LIMIT=70
CURRENT_USAGE=90

echo "LIMIT: $LIMIT"
echo "Current user: $CURRENT_USAGE"

# Arifmetika: CURRENT_USAGE dan LIMIT ni ayirib, 
# qancha ortiqcha yuklama borligini hisoblang.

DIFF=$(($CURRENT_USAGE-$LIMIT))

echo $DIFF
# Shartli tekshiruv (Relational): Agar yuklama LIMITdan katta bo'lsa,
# ekranga "DIQQAT: Yuklama haddan tashqari ko'p!" deb chiqaring.

if [ $CURRENT_USAGE -lt $LIMIT ]; then
    echo "DIQQAT: Yuklama haddan tashqari ko'p!"
else
    echo "Bos ukam! Hammasi joyida"
fi
