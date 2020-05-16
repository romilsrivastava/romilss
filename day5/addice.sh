#!/bin/bash -x
z=$(( RANDOM%6 + 1 ));
x=$(( RANDOM%6 + 1 ));
y=$(( $x+$z ));

