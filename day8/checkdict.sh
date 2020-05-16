#!/bin/bash -x

declare -A facevalue
read -p  "enter how many times you want to roll a dice: " rolldicetimes
isroll=0;
roll=$(( RANDOM%6+1 ))
faceone=1
facetwo=2
facethree=3
facefour=4
facefive=5
facesix=6
count=0
length=0
max=6
min=1
counts=0
while [[ isroll -lt rolldicetimes ]]
do
	case $roll in
		$faceone)
			face="one"
			;;
		$facetwo)
			face="two"
			;;
		$facethree)
			face="three"
			;;
		$facefour)
			face="four"
			;;
		$facefive)
			face="five"
			;;
		$facesix)
			face="six"
			;;
		*)
			face="unpredictable situation"
	esac
	facevalue[$face]=$roll
	echo $face
	isroll=$(( $isroll+1 ))
done

echo "${facevalue[@]}"
for (( i=0 ; i<=$rolldicetimes ; i++ ))
do
	numroll[(( count++ ))]=$roll
	for i in ${numroll[@]}
	do
		if [[ $roll -eq $faceone  ||  $roll -eq $facetwo  ||  $roll -eq $facethree  ||  $roll -eq $facefour  ||  $roll -eq $facefive  ||  $roll -eq $facesix ]]
		then
	      (( length++ ))
			if [ $length -eq 10 ]
			then
			echo "10 times"
			echo "maxnumber""$max" ",""minnumber" "$min"
			exit
			fi
		fi
    done
done
for (( j=0 ; j<=$rolldicetimes ; j++ ))
do
	maxnum[(( counts++ ))]=$roll
	for j in "${maxnum[@]}"; do
  	if ((maxnum[$i] > max)); then
    max=${maxnum[j]}
    ans=$j
   elif (( maxnum[$j] < min)); then
	max=${maxnum[j]}
	fi
done
printf '%s\n' "$ans"
