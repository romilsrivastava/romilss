#!/bin/bash -x

p=$(( RANDOM%3 ))
WagePerHour=20
FullDayHour=16
PartTimeHour=8
WorkingDayPerMonth=20
MaxHrs=$(( RANDOM%100 + 10 ))
MaxDays=$(( RANDOM%20 +10 ))
DailyWage=0
TotalWage=0
function workhrs(){
	case $p in
   1)
	workhours=16
	;;
	2)
	workhours=8
	;;
	*)
	workhours=0
	;;
	esac
}
workhrs
workinghours=$workhours
if [[ (( $MaxHrs -lt 100 )) ]] && [[ (( $MaxDays -lt 20 )) ]]
   then
	Day=$(( RANDOM%19 + 1 ))
	DailyWage=$(( $Day*$workinghours*$WagePerHour ))
	TotalWage=$(( $DailyWage*$MaxDays ))
else
	echo "maximum time crossed"
fi



