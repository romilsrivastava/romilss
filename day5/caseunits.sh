#!/bin/bash -x
read -p "enter" number;
case 1 in
	$(($number<= 9)))
			echo "unit"
			;;
	$(($number>=10 && $number<=99)))
			echo "tens"
			;;
	$(($number>=100 && $number<=999)))
			echo "hundred"
			;;
	$(($number>=1000 && $number<=9999)))
			echo "thousand"
			;;
	*) 
		echo "out of bound"
			;;
esac
