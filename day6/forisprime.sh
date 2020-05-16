#!/bin/bash -x
read -p"enter" n
for (( counter=2 ; counter<=n/2 ; counter++ ))
do
	if [ $((n%counter)) -eq 0 ]
	then
		echo "is not prime"
	fi
done
echo "is prime"
