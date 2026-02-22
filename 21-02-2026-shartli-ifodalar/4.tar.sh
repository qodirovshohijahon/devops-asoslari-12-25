#!/bin/bash 

# Author: Mustafo
# Date: 21.02.2026
# Script name: Fayllar uchun shartli ifoda

mkdir muhim-fayllar && cd muhim-fayllar
touch file{1...10}.log
tar -cvf production-loglari.tar muhim-fayllar
tar -xvf production-loglari.tar


