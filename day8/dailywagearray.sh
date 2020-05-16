#!/bin/bash -x

isparttime=1;
isfulltime=2;
maxhrsinmonth=4;
emprateperhr=20;
numworkingdays=20;

totalemphr=0;
totalworkingdays=0;

function getworkhrs() {
	local $empcheck=$1
	case $empcheck in
		$isfulltime)
			emphrs=8

