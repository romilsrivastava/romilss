#!/bin/bash -x
a=$(( RANDOM%900 + 100 )); 
b=$(( RANDOM%900 + 100 ));
c=$(( RANDOM%900 + 100 ));
d=$(( RANDOM%900 + 100 ));
e=$(( RANDOM%900 + 100 ));
max=$a;
min=$a;
if [ $b -gt $max ]
then
	max=$b; 
elif [ $c -gt $max ]
then 
	max=$c;
elif [ $c -gt $max ]
then
	max=$c;
elif [ $d -gt $max ]
then
	max=$d;
elif [ $e -gt $max ]
then
	max=$e;
else
	max=$a;
fi
if [ $b -lt $min ]
then
	min=$b;
elif [ $c -lt $min ]
then
	min=$c;
elif [ $d -lt $min ]
then
	min=$d;
elif [ $e -lt $min ]
then
	min=$e;
else
	min=$a;
fi

