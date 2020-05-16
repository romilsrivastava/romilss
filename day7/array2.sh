#!/bin/bash -x

counter=0
number[((counter++))]=$(( RANDOM%900 + 100 ))
number[((counter++))]=$(( RANDOM%900 + 100 ))
number[((counter++))]=$(( RANDOM%900 + 100 ))
number[((counter++))]=$(( RANDOM%900 + 100 ))
number[((counter++))]=$(( RANDOM%900 + 100 ))
secondgreatest=$(printf '%s\n' "${number[@]}" | sort -n | tail -2 | head -1)
secondamallest=$(printf '%s\n' "${number[@]}" | sort -r | tail -2 | head -1)
