#!/bin/bash -x

p=$(( RANDOM%3 ))
function workhrs(){
	case $p in
		1)
		echo "full time"
		workhours=16
		;;
		2)
		echo "part time"
		workhours=8
		;;
		*)
		echo "absent"
		workhours=0
		;;
	esac
}
workhrs


