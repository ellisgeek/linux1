#!/bin/bash

#Elliott Saille

count=1
while [ $count -le 9 ]; do
  echo $count
  sleep 1
  ((count++))
done
