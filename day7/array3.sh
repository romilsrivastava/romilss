#!/bin/bash -x

number=( 1 2 3 -1 -2 -3 )
n=${#number[@]}
for (( i=0 ; i<$n-2 ; i++ ))
do
	for (( j=$i+1 ; j<$n-1  ; j++ ))
		do
			for (( k=$j+1 ; k<$n ; k++ ))
				do
					if [ $(( ${number[i]} + ${number[j]} + ${number[k]} )) -eq 0  ]
						then
							echo "sum is zero"
					else
						echo "not zero"
					fi
				done
		done
done
