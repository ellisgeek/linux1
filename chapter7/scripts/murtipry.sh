#!/bin/bash

#Elliott Saille

while [[ $guess != "quit" ]]; do
	let num1=$RANDOM%10+1
	let num2=$RANDOM%10+1
	let answer=$num1*$num2
	echo "What is ${num1} * ${num2}?"
	read guess
	if [[ $guess == $answer ]]; then
		echo "Correct"
	elif [[ $guess == "quit" ]]; then
		echo "Bye!"
	else
		echo "Incorrect!"
	fi
	sleep 1.5
done
