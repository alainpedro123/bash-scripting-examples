#! /bin/bash

VAR=10
case $VAR in
    10)
        echo "it's 10"
        ;;
    20)
        echo "it's 20"
        ;;
    30)
        echo "it's 30"
        ;;
    *)
        echo "number is not 10 or 20 or 30, it's something else"
        ;;
esac