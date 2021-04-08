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

#Use-case-5
result4=$(($a%$b+$b))
echo "Value of a%b+c= $result4"

#Use-case-6 Storing results into a dictionary/associative array
declare -a resultOutcome
declare -a expression

resultOutcome=($result1 $result2 $result3 $result4)
expression=(a+b*c a*b+c c+a/b a%b+c)

declare -A results

#Use-case-6 Storing values into a disctionary/associative array
for((i=0;i<4;i++))
do
	results[${expression[i]}]=${resultOutcome[$i]}
done

#Use-case-6 Fetching values from a dictionary/associative array
for key in "${!results[@]}"
do
	echo "$key => ${results[$key]}";
done

#Use-case-7 Storing the result values into an array from a dictionary/associative array
index=0
for value in ${results[@]}
do
	resultArray[$index]=${results[$value]}
	index=$(($index+1))
done

echo "Result array= ${resultArray[@]}"