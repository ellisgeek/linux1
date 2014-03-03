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
