#!/bin/bash

#Elliott Saille

file="~/file"
if [ -e $file ]; then
  echo "File Exists"
else
  echo "File does not exist"
fi
