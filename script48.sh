#! usr/bin/env bash

for i in {1..10};
do
    if (( $i == 5 ));
    then
        continue;
    else
        echo $i;
    fi
done