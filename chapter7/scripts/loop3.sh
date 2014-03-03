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
