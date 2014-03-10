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
