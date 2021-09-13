#! /bin/bash

UND_VAR="Hello everyone, this is an underscore variable"
touch new-file.txt
echo "$UND_VAR" > new-file.txt
cat new-file.txt