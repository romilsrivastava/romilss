#!/bin/bash -x
read -p "enter" mon;
read -p "enter" day;
if [ $mon -eq 3 ] && [ $day -ge 20 ] && [ $day -le 31 ]
then
	echo "true";
elif [ $mon -eq 4 ] && [ $day -ge 1 ] && [ $day -le 30 ]
then
	echo "true";
elif [ $mon -eq 5 ] && [ $day -ge 1 ] && [ $day -le 31 ]
then
	echo "true";
elif [ $mon -eq 6 ] && [ $day -ge 1 ] && [ $day -le 20 ]
then
	echo "true";
else
	echo "false";
fi
