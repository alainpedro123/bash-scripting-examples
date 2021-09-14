#! usr/bin/env bash

# example 1
for i in {1..10};
do
    if (( $i < 5 ));
    then
        echo $i;
    else
        break;
    fi
done

# example 2

arr=(1 2 3 4)
for i in "${arr[@]}"
do
    echo $i
    if [ $i == 3 ];
    then
        break
    fi
done