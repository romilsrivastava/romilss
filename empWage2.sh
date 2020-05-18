#!/bin/bash -x
p=$(( RANDOM%2 ))
WagePerHour=20
FullDayHour=8
case $p in
	1)
	echo "employee is present for full time"
	dailywage=$(( $WagePerHour*$FullDayHour ))
	;;
	*)
	echo "employee is absent"
	;;
esac
