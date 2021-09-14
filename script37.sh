#! /bin/bash

CAR="BMW"
case $CAR in
    Audi)
        echo "it's an Audi"
        ;;
    Mercedes)
        echo "it's a Mercedes"
        ;;
    BMW)
        echo "it's a BMW"
        ;;
    *)
        echo "It's some other brand"
        ;;
esac