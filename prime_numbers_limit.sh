#!/bin/bash
#prime numbers

echo "enter the limit"
read limit

for (( i=2; i<=$limit; i++ ))
do
        t=1
        for (( j=2; j<$i; j++ ))
        do
                r=$(($i%$j))
                if [[ $r -eq 0 ]]
                then
                        t=0
                        break
                fi
        done
        if [[ $t -eq 1 ]]
        then
                echo "$i"
        fi
