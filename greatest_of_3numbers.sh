#!/bin/bash
#greatest of 3 nos

echo "enter the num n1"
read n1
echo "enter the num n2"
read n2
echo "enter the num n3"
read n3

if [[ $n1 -gt $n2 ]] && [[ $n1 -gt $n3 ]]
then
        echo " $n1 is greatest number"
elif [[ $n2 -gt $n1 ]] && [[ $n2 -gt $n3 ]]
then
        echo "$n2 is greatest number"
else
        echo "$n3 is greatest number"
fi
