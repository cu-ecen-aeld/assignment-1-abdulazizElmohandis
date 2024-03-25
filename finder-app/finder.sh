#!/bin/bash


filesdir="$1"
searchstr="$2"


if [ "$#" -ne 2 ]; then
	exit 1
fi

if [ ! -d "$filesdir" ]; then

	exit 1 

fi


Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

X=$(find "$filesdir" -type f | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"










