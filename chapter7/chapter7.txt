While Loop 1:
  Script:
    #!/bin/bash
    #Elliott Saille

    count=1
    while [ $count -le 9 ]; do
      echo $count
      sleep 1
      ((count++))
    done

  Output:
    1
    2
    3
    4
    5
    6
    7
    8
    9

While Loop 2:
  Script:
    #!/bin/bash
    # Elliott Saille

    count=1
    while [ $count -le 9 ]; do
      echo $count
      sleep 1
    done

  Output:
    1
    1
    1
    1
    1
    1
    1
    1
    1

While Loop 3:
  Scripts:
    #!/bin/bash
    # Elliott Saille

    count=1
    done=0
    while [ $count -le 9 ] && [ $done -eq 0 ]; do
      echo $count 
      sleep 1
      ((count++))
      if [ $count == 5 ]; then
        done=1
      fi
    done

  Output:
    1
    2
    3
    4

While Loop 4:
  Scripts:
    #!/bin/bash
    #Elliott Saille

    count=1
    done=0
    while [ $count -le 9 ]; do
      echo $count
      sleep 1
      ((count++))
      if [ $count == 5 ]; then
        break
      fi
    done

  Output:
    1
    2
    3
    4

While Loop 5:
  Script:
    #!/bin/bash
    #Elliott Saille

    count=1

    while [ $count -le 9 ]; do
      sleep 1
      ((count++))
      if [ $count == 5 ]; then
        continue
      fi
      echo $count
    done
    echo "Finished"

  Output:
    2
    3
    4
    6
    7
    8
    9
    10
    Finished

Even Odd Script (for loop):
  Script:
    #!/bin/bash
    #Elliott Saille

    for n in {1..10}; do
      out=$(( $n % 2 ))
      if [ $out == 0 ]; then
        echo "$n is a even number"
      else
        echo "$n is a odd number"
      fi
    done

  Output:
    1 is a odd number
    2 is a even number
    3 is a odd number
    4 is a even number
    5 is a odd number
    6 is a even number
    7 is a odd number
    8 is a even number
    9 is a odd number
    10 is a even number

Guess the number V.1:
  Script:
    #!/bin/bash
    #Elliott Saille

    answer=5
    correct=0
    guess=0
    while [ $correct == 0 ]; do
      # Ask the "player" for a number
      echo "Enter a number between 1 and 10"
      read guess

      #Check the guess
      if [ $guess -lt 1 ] || [ $guess -gt 10 ]; then
        echo "Please enter a number between 1 and 10"
      elif [ $guess == $answer ]; then
        echo "WOOHOO! You can guess a number that never changes!"
        correct=1
      else
        echo "You Suck!"
      fi
    done

  Output:
    Enter a guess between 1 and 10
    1
    You Suck!
    Enter a guess between 1 and 10
    2
    You Suck!
    Enter a guess between 1 and 10
    3
    You Suck!
    Enter a guess between 1 and 10
    4
    You Suck!
    Enter a guess between 1 and 10
    5
    WOOHOO! You can guess a number that never changes!

Guess the number V.2:
  Script:
    #!/bin/bash
    #Elliott Saille

    answer=5
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
        echo "WOOHOO! You can guess a number that never changes!"
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

  Output:
    Run #1:
      Enter a guess between 1 and 10
      1
      You Suck!
      Now Try Again!
      Enter a guess between 1 and 10
      3
      You Really Suck!

    Run #2:
      Enter a guess between 1 and 10
      4
      You Suck!
      Now Try Again!
      Enter a guess between 1 and 10
      5
      WOOHOO! You can guess a number that never changes!

BONUS: Guess the number in python with a random number to be guessed:
  Script:
    #!/usr/bin/python

    # Import the random module
    import random

    # Initialize Variables
    guess = 0
    answer = 1

    #Ask the user to enter a number
    while guess != answer:
        # Generate a random number
        answer = random.randint(1, 10)
        guess = int(input("Please enter a number: "))

        # Check if not number and check if answer is correct
        if guess < 1 or guess > 10 or guess == "":
            print "Please enter a number between 1 and 10\n\n"
    	if guess != answer:
            print "Try Again!\n\n"
        # Generate new answer
        random.jumpahead(random.randint(1, 1000))
    else:
        print "Woohoo! You got it right\n\n"

  Output:
    Please enter a number: 7
    Try Again!


    Please enter a number: 6
    Try Again!


    Please enter a number: 5
    Try Again!


    Please enter a number: 4
    Try Again!


    Please enter a number: 9
    Try Again!


    Please enter a number: 4
    Try Again!


    Please enter a number: 3
    Try Again!


    Please enter a number: 2
    Try Again!


    Please enter a number: 1
    Try Again!


    Please enter a number: 67
    Please enter a number between 1 and 10


    Try Again!


    Please enter a number: 5   
    Try Again!


    Please enter a number: 77
    Please enter a number between 1 and 10


    Try Again!


    Please enter a number: 5
    Try Again!


    Please enter a number: 4
    Woohoo! You got it right
