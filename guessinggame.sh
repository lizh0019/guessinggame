#!/usr/bin/env bash
# guessinggame.sh

function cal_num {
    #local N
    files=(*) #$(ls)
    #echo $files
    N=${#files[*]}
    #echo $N
}

while true
do
    cal_num
    echo "please input a guess number of files in current folder"
    read guessnumber
    if [[ $guessnumber -gt $N ]]
    then
       echo "guess number is larger than actual number, try again"
    elif [[ $guessnumber -lt $N ]]
    then
       echo "guess number is less than actual number, try again"
    else
       echo "congratulations! correct guess"
       break
    fi
done
