#! /bin/bash

# example 1
case $1 in      #evaluting the first word
    req*)
        echo "it's a requirement or request"
        ;;
    meet*)
        echo "it's a meeting"
        ;;
    *)
        echo "This is a default statement"
esac

# executing the file
# ./script38.sh "some word"


# example 2
# CASE - SWITCH
read -p "Are you 21 or over? Y/N " ANSWER   # what does -p do?
case "$ANSWER" in
    [yY] | [yY][eE][sS])
        echo "You can get a driving license"
        ;; # -> break
    [nN] | [nN][oO])
        echo "Sorry, no drinking"
        ;; 
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac