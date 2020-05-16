#!/bin/bash -x
read -p "enter" number;
if [ $(( number / 1 )) -eq 1 ]; then
	echo "unit";
elif [ $(( number / 10 )) -eq 1 ]; then
	echo "tens";
elif [ $(( number / 100 )) -eq 1 ]; then
	echo "hundred";
elif [ $((number / 1000 )) -eq 1 ]; then
	echo "thousand":
else
	echo "out of bound":
fi
