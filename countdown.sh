#!/bin/bash

echo -e "\n~~ Countdown Timer ~~\n"
#Program that counts down to zero from a given argument


if [[ $1 -gt 0 ]]  #-lt (less than), -le (less than or equal to), -ge (greater than or equal to)
## -ne (not equal to)
then
#for loop
: '
  for (( i = $1; i >= 0; i-- ))
do
  echo $i 
  sleep 1
done
'
#while loop
I=$1
while [[ $I -ge 0 ]]
do
  echo $I
  (( I-- ))
  sleep 1
done


else
  echo Include a positive integer as the first argument
fi