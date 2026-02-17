#!/bin/bash 

# Author: Mustafo
# Date: 17.02.2026
# Script name: Quotations


NAME="Ali"
echo "Salom $NAME"          # Natija: Salom Ali
echo "Bugun: $(date)"       # Natija: Bugun: Tue Feb 17...
echo "Fayllar: *.txt"       # Natija: Fayllar: *.txt (fayllarni sanab o'tmaydi)
echo
echo "Single-------"
echo 
NAME="Ali"
echo 'Salom $NAME'          # Natija: Salom $NAME
echo 'Bugun: $(date)'       # Natija: Bugun: $(date)