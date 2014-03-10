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

