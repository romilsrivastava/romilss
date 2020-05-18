#!/bin/bash -x

p=$(( RANDOM%3 ))
WagePerHour=20
FullDayHour=16
PartTimeHour=8
case $p in
	1)
	echo "employee is present for full time"
	dailywage=$(( $WagePerHour*$FullDayHour ))
	;;
	2)
	echo "employee is present for part time"
	dailywage=$(( $WagePerHour*$PartTimeHour ))
	;;
	*)
	echo "employee is absent"
	;;
esac
