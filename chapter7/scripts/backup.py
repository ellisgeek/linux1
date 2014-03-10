#!/usr/bin/env python

#import modules
import os
import shutil


#define some helpful functions
def confirm(prompt=None, resp=False):
    """
    Prompts for yes or no response from the user. Returns True for yes and
    False for no.

    "resp" should be set to the default value assumed by the caller when
    user simply types ENTER.
    """
    #set default prompt if none set
    if prompt is None:
        prompt = "Confirm"

    #Change the default response
    if resp:
        prompt = "%s [%s]|%s: " % (prompt, "y", "n")
    else:
        prompt = "%s [%s]|%s: " % (prompt, "n", "y")

    #Check for user input
    while True:
        ans = raw_input(prompt)
        if not ans:
            return resp
        if ans not in ["y", "Y", "n", "N"]:
            print "please enter y or n."
            continue
        if ans == "y" or ans == "Y":
            return True
        if ans == "n" or ans == "N":
            return False

print "Current directory is %s" % os.getcwd()

#define variables and get folders
source = os.path.expanduser(raw_input("What folder should I backup?: "))
dest = os.path.expanduser(raw_input("Where should I backup to?: "))
dirname = os.path.basename(source)

#check if source exists
if not os.path.exists(source):
    print "I'm sorry Dave, but i could not find %s" % source
    exit(1)
elif not os.access(source, os.W_OK):
    print "I'm sorry Dave but i cannot access  %s!" % source
    exit(1)

#Check if dest exists
if os.path.exists(dest) and os.access(dest, os.W_OK):
    if confirm("%s cannot exist prior to backup should i erase it?" % dest, True):
        shutil.rmtree(dest)
        if os.path.exists(dest):
            print "I could not erase %s" % dest
            exit(1)

try:
    #Copy source > dest
    shutil.copytree(source, os.path.join(dest, dirname))
#Throw a useful error
except IOError as e:
    print "\n"
    print "({})".format(e)
    print "\n"
    print "Copy Failed!"
    exit(1)
#If no errors print happy message!
else:
    print "\nCopied Successfully!\n"
