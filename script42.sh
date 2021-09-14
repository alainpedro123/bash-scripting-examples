#! usr/bin/env bash

# example 1 
for i in `seq 0 10`;
do
    echo $i
done


# example 2 
for i in 1 2 3 4 5 6 7 8 9 10;
do
    echo "the value is: $i"
done


# example 3
for i in {1..10};
do
    echo "the value is: $i"
done