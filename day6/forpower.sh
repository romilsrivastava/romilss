#!/bin/bash -x
read -p "enter"power
ans=1
for (( counter=1 ; counter<=2\power | bc ; counter++ ))
do
	echo  2^=power 
done
printf "\n"
