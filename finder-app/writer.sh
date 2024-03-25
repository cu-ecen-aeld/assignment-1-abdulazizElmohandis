#!/bin/bash


writefile="$1"
writestr="$2"



if [ "$#" -ne 2 ]; then
	exit 1
fi

mkdir -p "$(dirname "$writefile")"


echo "$writestr" > $writefile

if [ $? -ne 0 ]; then

    echo "problem creating file $2"
fi





