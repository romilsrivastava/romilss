#!/bin/bash -x

counter=0
number[((counter++))]=$(( RANDOM%900 + 100 ))
number[((counter++))]=$(( RANDOM%900 + 100 ))
number[((counter++))]=$(( RANDOM%900 + 100 ))
number[((counter++))]=$(( RANDOM%900 + 100 ))
number[((counter++))]=$(( RANDOM%900 + 100 ))
first=${number[0]}
second=${number[1]}
first1=${number[0]}
second1=${number[1]}
for (( i=1; i<4 ; i++ ))
do
	if [[ ${number[i]} > $first ]]
	then
		second=$first
		first=${number[i]}
	elif [[ ( ${number[i]} > $second ) &&  ( ${number[i]} != $first ) ]]
		then
		second = ${number[i]}
	fi
done
echo "second largest"$second
for (( j=1; j<4 ; j++ ))
do
   if [[ ${number[j]} < $first ]]
   then
      second1=$first1
      first1=${number[j]}
   elif [[ ( ${number[j]} < $second1 ) &&  ( ${number[j]} != $first1 ) ]]
      then
      second1 = ${number[j]}
   fi
done
echo "smallest second"$second1







