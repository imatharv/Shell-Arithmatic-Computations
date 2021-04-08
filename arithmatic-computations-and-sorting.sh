#!/bin/bash

echo "Welcome to arithmatic computations and sorting"

#Use-case-1
read -p "Enter three numbers a, b, c: " a b c
echo "Value of a= $a"
echo "Value of b= $b"
echo "Value of c= $c"

#Use-case-2
result1=$(($a+$b*$c))
echo "Value of a+b*c= $result1"

#Use-case-3
result2=$(($a*$b+$c))
echo "Value of a*b+c= $result2"

#Use-case-4
result3=$(($c+$a/$b))
echo "Value of c+a/b= $result3"