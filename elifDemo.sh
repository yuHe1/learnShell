#!/bin/bash
a=3
echo $a
#if [ $a > 3 ]; then # not working
#if (( $a \> 3 )); then #working
if [ $a \> 3 ]; then #working one
	echo "a is bigger than 3"
elif [ $a = 3 ]; then
	echo "a is equal 3"
else 
	echo "other wise"
fi