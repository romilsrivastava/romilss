#!/bin/bash -x

declare -A facevalue
read -p  "enter how many times you want to roll a dice: " rolldicetimes
isroll=0;
#roll=$(( RANDOM%6+1 ))
faceone=1
facetwo=2
facethree=3
facefour=4
facefive=5
facesix=6
counter=0
count=0
while [[ isroll -lt rolldicetimes ]]
do
	roll=$(( RANDOM%6+1 ))
done
