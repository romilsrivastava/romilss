#!/bin/bash -x
isparttime=1;
isfulltime=2;
mxhrsmonth=10;
emprateperhr=20;
numwrkngday=20;

totalemphr=0;
totalworkingdays=0;

while [[ $totalemphr -lt $mxhrsmonth && $totalworkingdays -lt $numwrkngday ]]
do
	((totalworkingdays++))
	empcheck=$((RANDOM%3));
	case $empcheck in
		$isfulltime)
			emphrs=8
				;;
		$isparttime)
			emphrs=4
				;;
		*)
			emphrs=0
				;;
	  esac
	totalemphr=$(($totalemphr+$emphrs))
done

totalsalary=$(($totalemphr*$emprateperhr))
