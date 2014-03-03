#!/bin/bash

#Elliott Saille

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
