#!/bin/bash

#Elliott Saill 

echo -e "Please enter two numbers!"
read num1
echo "+"
read num2
declare  -i result
result=$num1+$num2
echo "Result is: $result"
