#!/bin/bash
#create subdirectory called "temp"

mkdir temp
echo "...create temp directory..."
cp cal.sh ./temp/tmp_cal.sh
cp num1.txt ./temp/num1.txt
cp num2.txt ./temp/num2.txt
echo "...copy files to temp directory..."

echo "1) add"
echo "2) sub"
echo "3) div"
echo "4) mul"
printf "select menu:"
read menu

./temp/tmp_cal.sh ${menu}

rm temp/tmp_cal.sh
rm temp/num1.txt
rm temp/num2.txt

rmdir temp
