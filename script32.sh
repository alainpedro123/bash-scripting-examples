#! /bin/bash

FILE="file1.txt"
if [ -s "$FILE" ]
then
    echo "$FILE is not of zero size or not empty!"
else
    echo "$FILE is of zero size or empty!"
fi