#! /bin/bash

# 1. VARIABLES

NAME="Alain"
echo "My name is ${NAME}"
echo "My name is $NAME"

read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you!"