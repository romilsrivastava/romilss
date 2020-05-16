#!/bin/bash -x
read -p "enter height" x;
read -p "enter choice from 1-4 "num;
case $num in
	$1)
		echo "converting height from feet to inch"
		y=$(( $x*12 ))
		;;
	$2)
		echo "converting height from feet to meter"
		z=$(( $x/3.281 ))
		;;
	$3)
		echo " inch to feet";
		k=$(( $x/12 ))
		;;
	$4)
		echo " meter to feet conversion";
		j=$(( $x*3.281 ))
		;;
	*)
		echo "conversion not allowed";
esac
