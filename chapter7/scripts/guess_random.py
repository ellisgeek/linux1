#!/usr/bin/python

import random

guess = ""

#ask the user to enter a number
while guess != answer:
	answer = random.randint(1, 10)
	print answer	
	guess = int(input("Please enter a number: "))
	if guess < 1 or guess > 10 or guess == "":
		print "Please enter a number between 1 and 10"
	if guess != answer:
		print "Try Again!"
	random.jumpahead(random.randint(1, 1000))
else:
	print "Woohoo! You got it right"
