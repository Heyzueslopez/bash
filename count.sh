#!/bin/bash

echo "Hello, What is your name?"
read myName

while [ -z "$myName" ]
	do
	echo "Blank spaces not allowed."
	echo "Enter your name! Please."
	read myName
done

while [ ${#myName} -lt 3 ]
	do
	echo "Name is too short"
	echo "Enter a name."
	read myName
done

while [ ${#myName} -gt 20  ]
	do
	echo "Name is too long"
	echo "Enter your name."
	read myName
done

while [[ $myName =~ [^a-zA-Z]+ ]]
	do
	echo "That is not a letter"
	echo "Enter your name."
	read myName
done

echo "Hi, $myName."



echo "Number must be between 3-100."
read myNum


while [ -z "$myNum" ]
do
echo "Do not leave blank."
echo "Number must be between 3-100."
read myNum
done

while [ $myNum -lt 3 ]
do
echo "Number must be equal or higher than 3"
echo "Number must be between 3-100"
read myNum
done

while [ $myNum -gt 100 ]
do
echo "Number must be equal or less than 100"
echo "Number must be between 3-100, please."
read myNum
done

while [[ $myNum =~ [^0-9] ]]
do
  echo "That is not a number"
  echo "Enter a number:"
  read myNum
done

echo " Ready, Set, Go..."

counter=0

if ! [ $((myNum % 2)) == 0 ] ;
	then
	counter=1
fi

while [ $counter -le $myNum ];
	do
	echo $counter
	let counter=$counter+2;
	sleep 0.3
done


echo "Cyberians!"