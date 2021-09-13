#! /bin/bash

# Single line comment
echo "This message will be added as a new line!!!" >> ./file.txt

<<Multi_line_comments
echo "This message will be added as a new line!!!" >> ./file.txt
echo "This message will be added as a new line!!!" >> ./file.txt
echo "This message will be added as a new line!!!" >> ./file.txt
echo "This message will be added as a new line!!!" >> ./file.txt

Multi_line_comments

echo "This has not been commented!"