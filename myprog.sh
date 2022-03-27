#!/bin/bash
#create subdirectory called "temp"

mkdir temp
cp cal.sh ./temp/tmp_cal.sh
cp num1.txt ./temp/num1.txt
cp num2.txt ./temp/num2.txt

sh ./temp/tmp_cal.sh

rm temp/tmp_cal.sh
rm temp/num1.txt
rm temp/num2.txt

rmdir temp
