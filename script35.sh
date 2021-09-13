#! /bin/bash

FILE=script1.sh

# Test if file has read permission
if [[ -r $FILE ]]
then
    echo "$FILE has read permission"
else
    echo "$FILE doesn't have read permission"
fi


# Test if file has write permission
if [[ -w $FILE ]]
then
    echo "$FILE has write permission"
else
    echo "$FILE doesn't have write permission"
fi


# Test if file has executation permission
if [[ -x $FILE ]]
then
    echo "$FILE has execution permission"
else
    echo "$FILE doesn't have execution permission"
fi