#!/bin/bash -x
p=1;
randomc=$(( RANDOM%10 ));
if [ $p -eq $randomc ];
then
   echo "present";
else
	echo "not present":
fi
