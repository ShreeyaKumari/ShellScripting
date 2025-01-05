#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Argument not found"
    exit
elif [ $# -lt 2 ]; then
    echo "Only one argument"
    exit
else
    f1=$(ls -l "$1" | cut -c '2-10')
    f2=$(ls -l "$2" | cut -c '2-10')
    if [ "$f1" = "$f2" ]; then
        echo "File permissions are identical"
        echo "File permissions are: $f1"
    else
        echo "File permissions are not identical"
        echo "File permission of the first file is: $f1"
        echo "File permission of the second file is: $f2"
    fi
fi

