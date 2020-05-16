#!/bin/bash -x
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "dog sound" ${sounds[dog]} #dog's sound
echo "ALL animal sounds" ${sounds[@]} #all values
echo "animal" ${!sounds[@]} # all keys
echo " number of animals" ${#sounds[@]} # number of elements
unset sounds[dog] sounds[bird] #delete dog
echo "animal left" ${!sounds[@]} # animal left after deletion




