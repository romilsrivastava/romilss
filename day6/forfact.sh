#!/bin/bash -x
read -p"enter" n
f=1
for (( i=1 ; i<=$n ; i++ ))
do
	f=$(( f * i ))
done
echo $f
