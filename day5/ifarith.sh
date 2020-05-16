#!/bin/bash -x
read -p "enter first number" a;
read -p "enter second number" b;
read -p "enter third number" c;
maxnum=$(( $a+$b*$c ));
minnum=$(( $a+$b*$c ));
secnum=$(( $a%$b+$c ));
thinum=$(( $c*$a/$b ));
founum=$(( $a*$b+$c ));
if [ $secnum -gt $maxnum ] && [ $secnum -gt $thinum ] && [ $secnum -gt $founum ];then
	maxnum=$secnum;
elif [ $thinum -gt $maxnum ] && [ $thinum -gt $secnum ] && [ $thinum -gt $founum ];then
	maxnum=$thinum;
elif [ $founum -gt $maxnum ] && [ $founum -gt $thinum ] && [ $founum -gt $secnum ];then
	maxnum=$founum;
else
	maxnum=$(( $a+$b*$c ));
fi
if [ $secnum -lt $minnum ] && [ $secnum -lt $thinum ] && [ $secnum -lt $founum ];then
	minnum=$secnum;
elif [ $thinum -lt $minnum ] && [ $thinum -lt $secnum ] && [ $thinum -lt $founum ];then
	minnum=$thinum;
elif [ $founum -lt $minnum ]  && [ $founum -gt $thinum ] && [ $founum -gt $secnum ];then
	minnum=$founum;
fi

