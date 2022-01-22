#! /bin/bash

# 1. VARIABLES

NAME="Alain"
echo "My name is ${NAME}"
echo "My name is $NAME"

read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you!"


# 2. ENVIRONMENT VARIABLES

############
# PATH - the whole path until the current directory
# USER - The username
# HOME - Default path to the user’s home directory
# EDITOR - Path to the program which edits the content of files
# UID - User’s unique ID
# TERM - Default terminal emulator
# SHELL - Shell being used by the user
############

# Accessing the Variables Values
echo $VARIABLE
echo $PATH


# Set New Environment Variables
VARIABLE_NAME=variable_value


# Deleting Variables
unset VARIABLE_NAME


# To set value of an environment variable
export VARIABLE=VALUE
