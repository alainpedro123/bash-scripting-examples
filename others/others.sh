#! /bin/bash
#script that receives parameter

# example 1
echo "First arg: $1"
echo "Second arg: $2"
echo "Second arg: $3"

## running the script on th terminal --> sh script1.sh alain 2 john

# example 2
i=1;
for user in "$@"
do
    echo "Username - $i: $user";
    i=$((i + 1));
done

