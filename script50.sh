#! usr/bin/env bash

# example 1
i=0

while (( ++i <= 5));
do
    echo "counter is at $i"
done



# example 2
a=1
b=2
count=10

while [[ $a -lt $count && $b -lt 5 ]];
do
    a=$(( a + 1 ))
    b=$(( b + 1 ))

    echo "a = $a and b = $b"
done