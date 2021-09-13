#! /bin/bash

PATH=dir
if [[ -d $PATH ]]
then
    echo "$PATH is a directory and not file"

elif [[ -f $PATH ]]
then
    echo "$PATH is a file and not a directory"
else
    echo "$PATH is not valid"
fi