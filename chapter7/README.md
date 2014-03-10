# Chapter 7
#### Bash Scripting

 - While Loop 1:
   - Script:

```
#!/bin/bash
# Elliott Saille

count=1
while [ $count -le 9 ]; do
  echo $count
  sleep 1
  ((count++))
done
```

   - Output:

```
    1
    2
    3
    4
    5
    6
    7
    8
    9
```

 - While Loop 2:
   - Script:

```
#!/bin/bash
# Elliott Saille

count=1
while [ $count -le 9 ]; do
  echo $count
  sleep 1
done
```

   - Output:

```
1
1
1
1
1
1
1
1
1
```

 - While Loop 3:
   - Scripts:

```
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
```

   - Output:

```
1
2
3
4
```

 - While Loop 4:
   - Scripts:

```
#!/bin/bash
# Elliott Saille

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
```

   - Output:

```
1
2
3
4
```

 - While Loop 5:
   - Script:

```
#!/bin/bash
# Elliott Saille

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
```

   - Output:

```
2
3
4
6
7
8
9
10
Finished
```

 - Even Odd Script (for loop):
   - Script:

```
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
```

   - Output:

```
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
```

 - Guess the number V.1:
   - Script:

```
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
```

   - Output:

```
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
```

 - Guess the number V.2:
   - Script:

```
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
```

   - Output:
     - Run #1:

```
Enter a guess between 1 and 10
1
You Suck!
Now Try Again!
Enter a guess between 1 and 10
3
You Really Suck!
```

     - Run #2:

```
Enter a guess between 1 and 10
4
You Suck!
Now Try Again!
Enter a guess between 1 and 10
5
WOOHOO! You can guess a number that never changes!
```

 - BONUS: Guess the number in python with a random number to be guessed:
   - Script:

```
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
```

   - Output:

```
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
```

 - Array 1
   - Script

```
#!/bin/bash

#Elliott Saille

array[0]="first"
array[1]="second"
echo $array

array1[0]="one"
array1[1]="two"
echo ${array1[1]}
echo $array1

array2=("aaa" "bbb" "ccc")
echo ${array2[2]}
echo $array2

array3=(a b c)
echo $array3
echo ${array3[@]}
echo ${array3[*]}
```

   - Output

```
first
two
one
ccc
aaa
a
a b c
a b c
```

 - Array 2
   - Script

```
#!/bin/bash

#Elliott Saille

array=('Debian Linux' 'Fedora Linux' Ubuntu Linux)

elements=${#array[@]}

for ((i=0;i<$elements;i++)); do
  echo ${array[${i}]}
done
```

   - Output

```
Debian Linux
Fedora Linux
Ubuntu
Linux
```

 - File 1
   - Script:

```
#!/bin/bash

#Elliott Saille

file="~/file"
if [ -e $file ]; then
  echo "File Exists"
else
  echo "File does not exist"
fi
```

   - Output:

```
Run #1:
  File Exists
  
Run #2:
 File does not exist
```

 - File 2
   - Script:

```
#!/bin/bash

#Elliott Saille

file="~/file"
if [ -s $file ]; then
  echo "$file is not empty"
fi

if [ -f $file ]; then
  echo "$file is not a Directory"
fi

if [ -e $file ]; then
  echo "$file Exists"
fi

if [ -d $file ]; then
  echo "$file is a Directory"
fi

if [ -r $file ]; then
  echo "$file is readable"
fi

if [ -x $file ]; then
  echo "$file is Executable"
fi
```

   - Output

```
~/file is not empty
~/file is not a directory
~/file Exists
~/file is readable
```

 - Guess random number
    - Script:

```
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
```

   - Output:

```
Enter a guess between 1 and 10
1
You Suck!
Now Try Again!
Enter a guess between 1 and 10
6
You Really Suck!
```

 - Bash Math
   - Script

```
#!/bin/bash

#Elliott Saille

echo "### let ###"

let addition=3+5
echo "3 + 5 = " $addition

let subtraction=7-8
echo "7 - 8 = " $subtraction

let multiplication=5*8
echo "5 * 8 = " $multiplication

let division=4/2
echo "4 / 2 = " $division

let modulo=9%4
echo "9 % 4 = " $modulo

let poweroftwo=2**2
echo "2 ^ 2 = " $poweroftwo
```

   - Output:

```
### let ###
3 + 5 =  8
7 - 8 =  -1
5 * 8 =  40
4 / 2 =  2
9 % 4 =  1
2 ^ 2 =  4
```

 - Multiplication game
   - Script:

```
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
```

   - Output:

```
What is 9 * 8?
72
Correct
What is 7 * 6?
42
Correct
What is 10 * 10?
100
Correct
What is 10 * 2?
20
Correct
What is 1 * 3?
4
Incorrect!
What is 6 * 8?
5
Incorrect!
What is 4 * 2?
9001 
Incorrect!
What is 9 * 10?
quit
Bye!
```

 - Add 2 Numbers
   - Script

```
#!/bin/bash
echo -e "Please enter two numbers!"
read num1
read num2
declare  -i result
result=$num1+$num2
echo "Result is: $result"
```

   - Output:

```
Please enter two numbers!
1
+
2
Result is: 3
```

 - Sort Months (python) (run as "python path/to/script")
   - Script:

```
#!/usr/bin/env python

#define the months of the year
months = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

print "Traditional order:"
for month in months:
    print month
    
print "\n\nAlphabetical order:"
for month in sorted(months):
    print month
```

   - Output:

```
Traditional order:
January
Febuary
March
April
May
June
July
August
September
October
November
December


Alphabetical order:
April
August
December
Febuary
January
July
June
March
May
November
October
September
```

 - List Directory contents (python) (run as "python path/to/script")
   - Script:

```
#!/usr/bin/env python

import os

files=[]
directories=[]
emptyFiles=[]


dir = "."
dirContents = os.listdir(dir)
for i in dirContents:
    if os.path.isfile(dir+"/"+i) and os.stat(dir+"/"+i).st_size > 0:
        files.append(dir+"/"+i)
    elif os.path.isdir(dir+"/"+i):
        directories.append(dir+"/"+i)
    elif os.stat(dir+"/"+i).st_size==0:
        emptyFiles.append(dir+"/"+i)

print "Non Empty Files:"
for f in files:
    print f

print "\n\nEmpty Files:"
for e in emptyFiles:
    print e

print "\n\nDirectories:"
for d in directories:
    print d
```

   - Output:

```
Non Empty Files:
/home/ellisgeek/patch_2.7.1-3_amd64.deb
/home/ellisgeek/gcc_4.8.1-2ubuntu3_amd64.deb
/home/ellisgeek/.xsession-errors
/home/ellisgeek/.allseeingeye.py.swp
/home/ellisgeek/dicecheck.py
/home/ellisgeek/mbam-setup-1.75.0.1300.exe
/home/ellisgeek/battleship.py
/home/ellisgeek/do-alarm
/home/ellisgeek/.xsession-errors.old
/home/ellisgeek/.lesshst
/home/ellisgeek/hover_linuxmint.png
/home/ellisgeek/ez_setup.py
/home/ellisgeek/patch_2.7.1-3_i386.deb
/home/ellisgeek/.compton.conf
/home/ellisgeek/.packettracer
/home/ellisgeek/broadcom-sta-dkms_5.100.82.112-11_all.deb
/home/ellisgeek/.dmrc
/home/ellisgeek/.bash_history
/home/ellisgeek/.gitconfig
/home/ellisgeek/.nano_history
/home/ellisgeek/.viminfo
/home/ellisgeek/linux-headers-3.11.0-12-generic_3.11.0-12.19_amd64.deb
/home/ellisgeek/.screenrc
/home/ellisgeek/.gtkrc-2.0-kde4
/home/ellisgeek/actmso10.py
/home/ellisgeek/output.pdf
/home/ellisgeek/wireless-tools_30~pre9-8ubuntu1_amd64.deb
/home/ellisgeek/coreutils_8.20-3ubuntu5_amd64.deb
/home/ellisgeek/.nvidia-settings-rc
/home/ellisgeek/broken keys.txt
/home/ellisgeek/.pulse-cookie
/home/ellisgeek/dpkg-dev_1.16.12ubuntu1_all.deb
/home/ellisgeek/build-essential_11.6ubuntu5_amd64.deb
/home/ellisgeek/dicecheck.cpp
/home/ellisgeek/ubuntu-quickstart~
/home/ellisgeek/.bash_logout
/home/ellisgeek/.ICEauthority
/home/ellisgeek/adCreateUsers.py
/home/ellisgeek/ldconfig
/home/ellisgeek/examples.desktop
/home/ellisgeek/make_3.81-8.2ubuntu3_amd64.deb
/home/ellisgeek/.steampid
/home/ellisgeek/g++_4.8.1-2ubuntu3_amd64.deb
/home/ellisgeek/module-init-tools_9-3ubuntu1_all.deb
/home/ellisgeek/.steampath
/home/ellisgeek/adCreateUsers.py~
/home/ellisgeek/.bashrc
/home/ellisgeek/.fehbg
/home/ellisgeek/dkms_2.2.0.3-1.1ubuntu4_all.deb
/home/ellisgeek/libc6-dev_2.17-93ubuntu4_amd64.deb
/home/ellisgeek/ubuntu-quickstart
/home/ellisgeek/.Xauthority
/home/ellisgeek/.gtkrc-2.0
/home/ellisgeek/coreutils_8.20-3ubuntu5_i386.deb
/home/ellisgeek/make_3.81-8.2ubuntu3_i386.deb
/home/ellisgeek/.profile


Empty Files:
/home/ellisgeek/.gksu.lock
/home/ellisgeek/.Xauthority.8MH69W


Directories:
/home/ellisgeek/.pki
/home/ellisgeek/.steam
/home/ellisgeek/.gnome
/home/ellisgeek/Desktop
/home/ellisgeek/.kde
/home/ellisgeek/.bin
/home/ellisgeek/Templates
/home/ellisgeek/.macromedia
/home/ellisgeek/Public
/home/ellisgeek/.icons
/home/ellisgeek/dotfiles
/home/ellisgeek/.gconf
/home/ellisgeek/mint
/home/ellisgeek/.compiz
/home/ellisgeek/.local
/home/ellisgeek/.openarena
/home/ellisgeek/.gimp-2.8.old
/home/ellisgeek/PacketTracer6
/home/ellisgeek/.PlayOnLinux
/home/ellisgeek/.config
/home/ellisgeek/.java
/home/ellisgeek/Videos
/home/ellisgeek/.mozilla
/home/ellisgeek/.oh-my-fish
/home/ellisgeek/rPi Images
/home/ellisgeek/.spe
/home/ellisgeek/.icedtea
/home/ellisgeek/.pip
/home/ellisgeek/.wine-pipelight
/home/ellisgeek/Downloads
/home/ellisgeek/My Saved Games
/home/ellisgeek/.gimp-2.8
/home/ellisgeek/.xchat2
/home/ellisgeek/linux1
/home/ellisgeek/Windows-8
/home/ellisgeek/nottetris
/home/ellisgeek/.wine
/home/ellisgeek/Pictures
/home/ellisgeek/.gnupg
/home/ellisgeek/.android
/home/ellisgeek/.ssh
/home/ellisgeek/.covers
/home/ellisgeek/.adobe
/home/ellisgeek/PlayOnLinux's virtual drives
/home/ellisgeek/Music
/home/ellisgeek/linux-class-stuff
/home/ellisgeek/.Skype
/home/ellisgeek/.gnome2
/home/ellisgeek/.thumbnails
/home/ellisgeek/.vmware
/home/ellisgeek/Podcasts
/home/ellisgeek/.minecraft
/home/ellisgeek/Steam
/home/ellisgeek/.dbus
/home/ellisgeek/Metro
/home/ellisgeek/.gstreamer-0.10
/home/ellisgeek/vmware
/home/ellisgeek/My Games
/home/ellisgeek/.fonts
/home/ellisgeek/Audible
/home/ellisgeek/.wine-browser
/home/ellisgeek/.VirtualBox
/home/ellisgeek/.speech-dispatcher
/home/ellisgeek/.ninja_ide
/home/ellisgeek/.ncmpcpp
/home/ellisgeek/.i3
/home/ellisgeek/.cinnamon
/home/ellisgeek/Documents
/home/ellisgeek/.gnome2_private
/home/ellisgeek/.homepage
/home/ellisgeek/.colors
/home/ellisgeek/.git-credential-cache
/home/ellisgeek/.gvfs
/home/ellisgeek/.shutter
/home/ellisgeek/.Genymobile
/home/ellisgeek/.hplip
/home/ellisgeek/Important System Files
/home/ellisgeek/.cache
/home/ellisgeek/.themes
/home/ellisgeek/.dynamitejack
/home/ellisgeek/.nv
```

 - Backup
   - Script:

```
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
```

   - Output

```
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
```
