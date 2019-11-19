#!/bin/bash
mkdir $1
while IFS=',' read -r statename url stateabbr

do 
    # echo "$statename"

    if [ "$statename" = $1 ]; then
        echo "$statename" "$url"  "$stateabbr"
        wget "$url"  -P $1 
    fi
done < statetable.csv