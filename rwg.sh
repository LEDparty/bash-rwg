#!/bin/bash
#random word generator
SCRIPT=$0
#
#associates nanoseconds with a time
#to be used when you generato more than one word
now=$(date +%N | cut -c 9)

case $now in
    0) delayClock=0.15 ;;
    1) delayClock=0.16 ;;
    2) delayClock=0.17 ;;
    3) delayClock=0.18 ;;
    4) delayClock=0.19 ;;
    5) delayClock=0.2 ;;
    6) delayClock=0.21 ;;
    7) delayClock=0.22 ;;
    8) delayClock=0.23 ;;
    *) delayClock=0.24 ;;
esac

word_number=$(cat dictionary-file | wc -l)
name_number=$(cat names-only | wc -l)

readarray -t word < dictionary-file
readarray -t name < names-only

if [ "$#" -eq 0 ]; then
    randomNumber=$(date +%6N | sed 's/^0*//')
    #forces number to be less than or equal to number of lines
    #in dictionary
    until [ "$randomNumber" -le "$word_number" ];do
    #removes leading zeroes from number string
        randomNumber=$(date +%6N | sed 's/^0*//')
    done
    echo "${word[$randomNumber]}"
    exit 0
elif [[ "$1" =~ ^[1-9] ]]; then
    for ((i=0; i < $1; i++)); do
        randomNumber=$(date +%6N | sed 's/^0*//')
    until [ "$randomNumber" -le "$word_number" ]; do
        randomNumber=$(date +%6N | sed 's/^0*//')
    done
    echo "${word[$randomNumber]}"
    #adds delay in execution to add unpredictability 
    sleep "$delayClock"
    done
elif [ "$1" = "-n" ]; then   
    if [[ "$2" =~ ^[1-9] ]]; then
        for ((i=0; i < $2; i++)); do
            randomNumber=$(date +%5N | sed 's/^0*//')
        until [ "$randomNumber" -le "$name_number" ]; do
            randomNumber=$(date +%5N | sed 's/^0*//')
        done
        echo "${name[$randomNumber]}"
        sleep "$delayClock"
        done
    else   
        randomNumber=$(date +%5N | sed 's/^0*//')
        until [ "$randomNumber" -le "$name_number" ]; do
            randomNumber=$(date +%5N | sed 's/^0*//')
        done
        echo "${name[$randomNumber]}"
        exit 0
    fi   
else   
    echo "For dictionary words:"
    echo -e "\t${SCRIPT##*/} [number-of-words]"
    echo "For names:"
    echo -e "\t${SCRIPT##*/} -n [number-of-names]"
fi

