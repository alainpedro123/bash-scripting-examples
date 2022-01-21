#! /bin/bash
# 2. CONDITIONAL

# a) IF
NAME="Alain2"

if [ "$NAME" == "Alain" ]
then
    echo "Your name is Alain"
fi



# b) IF-ELSE

if [ "$NAME" == "Alain" ]
then
    echo "Your name is Alain"
else
    echo "Your name is not Alain"
fi

# c) ELSE-IF
if [ "$NAME" == "Alain"]
then
    echo "Your name is Alain"
elif ["$NAME" == "Afonso"]
then
    echo "Your name is Afonso"
else
    echo "You must have some other name"
fi


# COMPARISON
NUM1=20
NUM2=35

if [ "$NUM1" -gt "$NUM2"]
then
    echo "$NUM1 > $NUM2"
else
    echo "$NUM2 > $NUM1"
fi


########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

#Logical AND - OR
VAR=4

# AND
if [[ $VAR -gt 2 ]] && [[ $VAR -lt 8]];
then
    echo "good"
fi

# OR
if [[ $VAR -gt 2 ]] || [[ $VAR -lt 8]];
then
    echo "also good"
fi



# Nesting If Conditions
VAR=6
if ["$VAR" -gt 1]
then
    if ["$VAR" -lt 10]
    then
        echo "The number is between 1 to 10"
    fi
fi