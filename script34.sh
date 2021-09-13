#! /bin/bash

FILE=link1
if [[ -L "$FILE" ]]
then
    echo "$FILE is a symbolic link"
else
    echo "$FILE is not a symbolic link"
fi