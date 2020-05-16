#!/bin/bash -x
sum=0
read -p "enter" n;
for (( counter=1; counter<=$n ; counter++ ))
do
	sum=$(( $sum + 1/$counter ))
done

printf "\n"
