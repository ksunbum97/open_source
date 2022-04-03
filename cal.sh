#!/bin/bash
#calculate integers in textfile

declare -a num_arr
num1=`cat num1.txt`
num2=`cat num2.txt`
num_arr[0]=$num1
num_arr[1]=$num2
echo "project management in github" 

if [ $# -eq 0 ]; then
	echo "...non operator parameter..."

	echo "1) add"
	echo "2) sub"
	echo "3) div"
	echo "4) mul"
	printf "select menu:"
	read menu

	if [ ${menu} -eq 1 ];then
		ans=`expr ${num_arr[0]} + ${num_arr[1]}`
		op="add"
	elif [ ${menu} -eq 2 ];then
		ans=`expr ${num_arr[0]} - ${num_arr[1]}` 
		op="sub"
	elif [ ${menu} -eq 3 ];then
		ans=`expr ${num_arr[0]} / ${num_arr[1]}`
		op="div"
	elif [ ${menu} -eq 4 ];then
		ans=`expr ${num_arr[0]} \* ${num_arr[1]}`
		op="mul"
	fi
	
	echo ""
	printf "num1:"
	echo ${num_arr[0]}
	printf "num2:"
	echo ${num_arr[1]}
	printf "op:"
	echo ${op}
	printf "result:"
	echo $ans
else
	menu=$1
	if [ ${menu} -eq 1 ];then
		ans=`expr ${num_arr[0]} + ${num_arr[1]}`
		op="add"
	elif [ ${menu} -eq 2 ];then
		ans=`expr ${num_arr[0]} - ${num_arr[1]}` 
		op="sub"
	elif [ ${menu} -eq 3 ];then
		ans=`expr ${num_arr[0]} / ${num_arr[1]}`
		op="div"
	elif [ ${menu} -eq 4 ];then
		ans=`expr ${num_arr[0]} \* ${num_arr[1]}`
		op="mul"
	fi

        echo "...${op} selected..."
        echo "...run calculater..."

	echo ""
	printf "num1:"
	echo ${num_arr[0]}
	printf "num2:"
	echo ${num_arr[1]}
	printf "op:"
	echo ${op}
        printf "result:"
        echo $ans
fi
