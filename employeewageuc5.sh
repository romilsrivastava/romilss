#!/bin/bash -x

p=$(( RANDOM%3 ))
WagePerHour=20
FullDayHour=16
PartTimeHour=8
WorkingDayPerMonth=20
case $p in
	1)
	echo "employee is present for full time"
	dailywage=$(( $WagePerHour*$FullDayHour ))
	monthlywage=$(( $WagePerHour*$FullDayHour*$WorkingDayPerMonth ))
	;;
	2)
	echo "employee is present for part time"
	dailywage=$(( $WagePerHour*$PartTimeHour ))
	monthlywage=$(( $WagePerHour*$PartTimeHour*$WorkingDayPerMonth ))
	;;
	*)
	echo "employee is absent"
	;;
esac
