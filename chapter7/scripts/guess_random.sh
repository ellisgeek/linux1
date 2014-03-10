#!/bin/bash

#Elliott Saille

let answer=$RANDOM%10+1
correct=0
guess=0
try=0
while [ $correct == 0 ]; do
  # Ask the "player" for a number
  echo "Enter a guess between 1 and 10"
  read guess

  #Check the guess
  if [ $guess -lt 1 ] || [ $guess -gt 10 ]; then
    echo "Please enter a number between 1 and 10"
  elif [ $guess == $answer ]; then
    echo "WOOHOO!"
    correct=1
  elif [ $try == 1 ]; then
    echo "You Really Suck!"
    exit 1
  else
    echo "You Suck!"
    echo "Now Try Again!"
    ((try++))
  fi
done
