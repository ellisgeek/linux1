#!/bin/bash

#Elliott Saille

array=('Debian Linux' 'Fedora Linux' Ubuntu Linux)

elements=${#array[@]}

for ((i=0;i<$elements;i++)); do
  echo ${array[${i}]}
done
