#! usr/bin/env bash

arr=("bash" "shell" "script")
length=${#arr[@]}   #the length of an array 

#for loop
for (( i=0; i<${length}; i++ ));
do
    echo $i " : " ${arr[$i]}
done