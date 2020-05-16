#!/bin/bash -x
num=($(seq 0 1 100))
s=0
rev=""
temp=$num
n=$(#num[@])
for (( i=o ; i<=$length ; i++ ))
do
    s=$(( $num % 10 ))
    num=$(( $num / 10 ))
    rev=$( echo ${rev}${s} )
done
done
if [ $temp -eq $rev ];
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi

