#!/bin/bash
#create subdirectory called "temp"

mkdir temp
echo "...create temp directory..."
cp cal.sh ./temp/tmp_cal.sh
cp num1.txt ./temp/num1.txt
cp num2.txt ./temp/num2.txt
echo "...copy files to temp directory..."
OPERATOR="op"

#export OPERATOR

./temp/tmp_cal.sh $OPERATOR

rm temp/tmp_cal.sh
rm temp/num1.txt
rm temp/num2.txt

rmdir temp
