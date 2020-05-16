#!/bin/bash -x

isPartTime=1;
isfullTime=2;
totalsalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++))
do
	empcheck=$((RANDOM%3));
	case $empcheck in
		$isfullTime)
			        emphrs=8
				     ;;
		$isPartTime)
			        emphrs=4
				     ;;
			       *)
			        emphrs=0
			        ;;
    esac
  salary=$(($emphrs*$empRatePerHr));
 totalsalary=$(($totalsalary+$salary));
done
