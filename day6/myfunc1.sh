#!/bin/bash -x
function myfunc1() {
	echo $1
}
result= " $( myfunc1 $((RANDOM%2)) )"
if ( $result -eq 1 )
then
	echo "success"
else
	echo "failure"
fi

