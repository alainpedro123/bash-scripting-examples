#! /bin/bash

VAR=$(cat file.txt)
echo "$VAR"
echo $? > returncode.txt

# $? -> capture the return code