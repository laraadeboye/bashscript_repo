#!/bin/bash
# Bingo Number Generator
echo -e "\n~~ Bingo Number Generator ~~\n"

NUMBER=$(( RANDOM % 75 + 1 ))  
TEXT="The next number is, "

if (( NUMBER <= 15 ))  # double parenthesis syntax. Note the absence of '$' sign and the use of let (check "help let" in the terminal)
then
  echo $TEXT B:$NUMBER  

elif [[ $NUMBER -le 30 ]] # square bracket syntax. Note the use of test. check "help test" in the terminal
then
  echo $TEXT I:$NUMBER

elif (( NUMBER < 46 ))   # double parenthesis syntax. Note the absence of '$' sign and the use of let (check "help let" in the terminal)
then
  echo $TEXT N:$NUMBER

elif [[ $NUMBER -lt 61 ]] # square bracket syntax. Note the use of test. check "help test" in the terminal
then 
  echo $TEXT G:$NUMBER

else
  echo $TEXT O:$NUMBER
fi