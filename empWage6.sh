#!/bin/bash -x

p=$(( RANDOM%3 ))
WagePerHour=20
FullDayHour=16
PartTimeHour=8
WorkingDayPerMonth=20
MaxHrs=$(( RANDOM%100 +10 ))
MaxDays=$(( RANDOM%20 +10 ))
case $p in
	1)
	echo "employee is present for full time"
	if [[ (( $MaxHrs -lt 100 )) ]] && [[ (( $MaxDays -lt 20 )) ]]
	then
	dailywage=$(( $WagePerHour*$FullDayHour ))
	monthlywage=$(( $WagePerHour*$FullDayHour*$WorkingDayPerMonth ))
	else
	echo " maximum limit reached of duty"
	fi
	;;
	2)
	echo "employee is present for part time"
	if [[ (( $MaxHrs -lt 100 )) ]] && [[ (( $MaxDays -lt 20 )) ]]
   then
	dailywage=$(( $WagePerHour*$PartTimeHour ))
	monthlywage=$(( $WagePerHour*$PartTimeHour*$WorkingDayPerMonth ))
	else
	echo "maximum limit reached of duty"
	;;
	*)
	echo "employee is absent"
	;;
	fi
esac

