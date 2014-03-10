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

