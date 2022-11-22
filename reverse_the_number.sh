#!/bin/bash
#reverse the number

sd=0
rev=0
echo "enter the number"
read num

while [ $num -gt 0 ]
do
        sd=$((num%10))            #sd = num % 10
        rev=$((rev*10+sd))      #rev = rev *10 + sd
        num=$((num/10))             #num = num / 10
done
echo "reverse the number $rev"
