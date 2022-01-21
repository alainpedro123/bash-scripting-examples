Bash Scripting - Exercises & Solutions
===============================

1.	Simple Hello World Script
```sh
#! /bin/bash

echo "Hello World!"
```

2.	Echo Command Without Newlines
```sh
#! /bin/bash

echo -n "Hello"
echo "World!"

echo -n "No"
echo "NewLines"
```

3.	String Concatenation With Echo
```sh
#! /bin/bash

echo "one" "two" "three" "four" "five"
```

4.	String Continuation Character
```sh
#! /bin/bash

echo "one" "two" "three" "four" "five" \
        "six" "seven" "eight"

# \ -> string continuation character
```

5.	Echo with Tab Characters
```sh
#! /bin/bash

echo -e "one\ttwo\three\tfour\tfive"

# \t -> tab character
```

6.	Echo with Newline Characters
```sh
#! /bin/bash

echo -e "one\ntwo\nhree\nfour\nfive"

# \n -> newline character
```

7.	Echo with -x to Display All Commands and their outputs
```sh
#! /bin/bash -x

echo "one"
echo "two"
echo "three"
```

8.	Printing Strings That Contain Single Quotes
```sh
#! /bin/bash

echo "Hello, meet John! He's Peter's Father."
```

9.	Printing Strings That Contain Double Quotes
```sh
#! /bin/bash

echo "Hello, meet John! He's \"Peter's Father\"!" 
```

10.	Write a message into a File
```sh
#! /bin/bash

echo "Hello, meet John! He's \"Peter's Father\"!" > ./file.txt
```

11.	Overwrite to a File
```sh
#! /bin/bash

echo "Hello, meet John! He's \"Peter's Father\"!" > ./file.txt

echo "This message will overwrite the message to the message above!" > ./file.txt
```


12.	Append a new line to an exsting file
```sh
#! /bin/bash

echo "This message will be added as a new line!!!" >> ./file.txt
```

13.	Single Line Comments. Multi Line Comments Using Heredocs
```sh
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
```

14.	Create a Variable and echo it.
```sh
# ! /bin/bash

greeting="Hello World!"
echo $greeting
```

15.	Multi Word Variables Combinations with Quotes
```sh
# ! /bin/bash

a="my favourite"
b="car is Mercedes"
c="${a} ${b}"

echo $c
```

16.	Using the "HOME" variable, write a script that displays the user's home path and lists all the existing files in there
```sh
# ! /bin/bash

VAR_PATH=$HOME
echo "$VAR_PATH"

ls "$VAR_PATH"
```

17.	Using the "USER" variable, echo the current username
```sh
# ! /bin/bash

VAR=$USER
echo "$VAR"
```

18. Using the "HOSTNAME" variable, echo the current hostname
```sh
# ! /bin/bash

VAR=$HOSTNAME
echo "$VAR"
```

19.	Echo $HOME with Escape to Avoid Expansion
```sh
#! /bin/bash

echo "\$HOME"
```

20.	Writing to file in HOME Directory Using HOME Environment Variable
```sh
#! /bin/bash

cd $HOME

echo "I like coding" > test.txt

cat test.txt
```

21.	Write a script that create a new file and lists all the existing items in the current directory
```sh
#! /bin/bash

touch new-file.txt

ls
```

22.	Using the "Link" command createa copy of an existing file, Write a messago into it, and display the file content
```sh
#! /bin/bash

ln -s new-file.txt link1
ls

echo "Echoing from the the file link1" >> link1

# link is the copy of file new-file.txt

cat link1
```

23.	Define an underscore variable with a message, create a new file, use underscore variable to Append to this new file and display.
```sh
#! /bin/bash

UND_VAR="Hello everyone, this is an underscore variable"
touch new-file.txt
echo "$UND_VAR" > new-file.txt
cat new-file.txt
```

24.	Let Command Arithmetic
```sh
#! /bin/bash

let a=5
let b=10
let c=a+b

echo "$a $b $c"
```

25.	Using "expr" perform 4 Basic Operators: Add, Subtract, Multiply, Divide 
```sh
#! /bin/bash

num1=10
num2=2

expr $num1 + $num2
expr $num1 - $num2
expr $num1 \* $num2
expr $num1 / $num2
```

26.	Increment a variable 3 times with Increment Operator 
```sh
#! /bin/bash

VAR=1

echo "$VAR"
VAR=$((VAR+=1))

echo "$VAR"
VAR=$((VAR+=1))

echo "$VAR"
VAR=$((VAR+=1))

echo "$VAR"
VAR=$((VAR+=1))
```

27.	Decrement a variable 3 times with Decrement Operator 
```sh
#! /bin/bash

VAR=4

echo "$VAR"
VAR=$((VAR-=1))

echo "$VAR"
VAR=$((VAR-=1))

echo "$VAR"
VAR=$((VAR-=1))

echo "$VAR"
VAR=$((VAR-=1))
```

28.	Combine Strings In One Line With Variables 
```sh
#! /bin/bash

VAR1="Hello World"
VAR2="Let's concatenate"
VAR3="Let's do it again"
CONCATENATION="${VAR1} ${VAR2} ${VAR3}"

echo "$CONCATENATION"
```

29.	Create Multi-Line String Variable with HEREDOC 
```sh
#! /bin/bash

VAR=$(cat<<'END_HEREDOC'
Here we could
write
multi line string
using heredoc
END_HEREDOC
)

echo "$VAR"
```

30.	Cat Multi-Line HEREDOC Text 
```sh
#! /bin/bash

cat<<MULTI_LINE
The current working directory is: $PWD
You are logged in as: $(whoami)
MULTI_LINE
```

31.	Test if File exists
```sh
#! /bin/bash

FILE="file1.txt"
if [ -e "$FILE" ]
then
    echo "$FILE exists!"
else
    echo "$FILE doesn't exist!"
fi

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u        True if the user id is set on a file
# -w        True if the file is writable
# -x        True if the file is an executable
# -z        True if the string/file is not empty
########
```


32.	Test if File is not zero size.
```sh
#! /bin/bash

FILE="file1.txt"
if [ -s "$FILE" ]
then
    echo "$FILE is not of zero size or not empty!"
else
    echo "$FILE is of zero size or empty!"
fi
```


33. Test if File is a Directory
```sh
#! /bin/bash

PATH=dir
if [[ -d $PATH ]]
then
    echo "$PATH is a directory and not file"

elif [[ -f $PATH ]]
then
    echo "$PATH is a file and not a directory"
else
    echo "$PATH is not valid"
fi
```


34.	Test if a file is A Symbolic Link
```sh
#! /bin/bash

FILE=link1
if [[ -L "$FILE" ]]
then
    echo "$FILE is a symbolic link"
else
    echo "$FILE is not a symbolic link"
fi
```


35.	Test if a File has Permission: Read, Write, Execute
```sh
#! /bin/bash

FILE=script1.sh

# Test if file has read permission
if [[ -r $FILE ]]
then
    echo "$FILE has read permission"
else
    echo "$FILE doesn't have read permission"
fi


# Test if file has write permission
if [[ -w $FILE ]]
then
    echo "$FILE has write permission"
else
    echo "$FILE doesn't have write permission"
fi


# Test if file has executation permission
if [[ -x $FILE ]]
then
    echo "$FILE has execution permission"
else
    echo "$FILE doesn't have execution permission"
fi
```


36.	Case Conditional Statement With Numbers
```sh
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
```


37.	Case Conditional Statement With Strings
```sh
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
```


38.	Case Conditional Statement With Wildcards (user input)
```sh
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
```


39.	Execute a Command And Capture STDERR (standard error) into a new file
```sh
#! /bin/bash

VAR=$(cat file.txt)
$VAR > stderr.txt
```


40.	Execute a Command And Capture the return Code
```sh
#! /bin/bash

VAR=$(cat file.txt)
echo "$VAR"
echo $? > returncode.txt

# $? -> capture the return code
```


41.	Bash Exec Command Hello World
```sh
#! /bin/bash

exec > new-file.txt
echo "Hello World!!!"
```


42.	For Loop - iterating over a sequence of numbers (from 1 to 10)
```sh
#! usr/bin/env bash

# example 1 
for i in `seq 0 10`;
do
    echo $i
done


# example 2 
for i in 1 2 3 4 5 6 7 8 9 10;
do
    echo "the value is: $i"
done


# example 3
for i in {1..10};
do
    echo "the value is: $i"
done
```

43. For loop - Read a content of a file Using
```sh
#! usr/bin/env bash

for i in $(cat file.txt);
do
    echo "$i"
done
```


44. For loop - List all the files in the same directory
```sh
#! usr/bin/env bash

for i in ./ *;
do
    echo "$i"
done
```


45. For loop - Changing the names of the files
```sh
#! usr/bin/env bash

FILES=$(ls *.txt)
NEW="new"

for FILE in $FILES
    do
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE
done
```


46. For loop - iterating through an array using counter variable
```sh
#! usr/bin/env bash

arr=("bash" "shell" "script")
length=${#arr[@]}   #the length of an array 

#for loop
for (( i=0; i<${length}; i++ ));
do
    echo $i " : " ${arr[$i]}
done
```


47.	For loop with Conditional Break
```sh
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
```


48.	For loop with Conditional Continue
```sh
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
```


49.	While loop - print hello once and break from the loop
```sh
#! usr/bin/env bash

# example 3
while true;
    do echo "hello" && break
done
```


50. While loop - Print numbers from 1 to 5
```sh
#! usr/bin/env bash

# example 1
i=0

while (( ++i <= 5));
do
    echo "counter is at $i"
done



# example 2
a=1
b=2
count=10

while [[ $a -lt $count && $b -lt 5 ]];
do
    a=$(( a + 1 ))
    b=$(( b + 1 ))

    echo "a = $a and b = $b"
done
```


51. While loop - Reading through a file line by line
```sh
#! usr/bin/env bash

LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./new-1.txt"
```


52.	Until loop - copy content into a new file until it's greater the 2 Kb
```sh
#! usr/bin/env bash

FILENAME=`basename "$0"`
echo FILENAME
TMP_FILE="./tmp1"
TARGET_FILE="./target"
cat $FILENAME > $TARGET_FILE
FILESIZE=0

until [ $FILESIZE -gt 2048 ];
do
    cp $TARGET_FILE $TMP_FILE
    cat $TMP_FILE >> $TARGET_FILE

    FILESIZE=`du $TARGET_FILE | awk '{print $1}'`
    echo "size of file is: $FILESIZE Bytes"
    sleep 1
done

echo "new size of file exceeded target of 2KB+"
```

53. Create an Array Variable Access by Index
54. Create an Associative Array Variable Access by Index
55. Accessing Array Members with Loop
56. Time a Command
57. Print Date
58. Print Date With Format
59. Print Seconds Elapsed for Block of Code
60. Read Text From File, Print to Screen
61. Read Text From File, If Condition Print to Screen
62. Basic Read Command
63. Read Command Into Array
64. Read Command with Delimiter
65. Read Command with Timeout
66. Menu Option with Select Command
67. Menu Option With Select Command From Array Variable
68. Split String By Space
69. Split String By Custom Delimiter
70. Split String into Array Variable
71. Split String by Multi-Byte Delimiter
72. Parse Command Line Options with Position
73. Parse Command Line Options With Shift Command
74. Parse Command Line Using GetOpt
75. Read Password from Stdin, Without Printing it
76. Pipe Command Example
77. Cat Pipe Word Count Example
78. echo to bc Command for Math Expression Simple
79. echo to bc Command for Math Expression More Complex
80. Function Prints Common Text, Call Multiple Times
81. Function Returns a String
82. Function Takes Params, Returns Sum
83. Tput Command to Print String
84. Tput Command to Print Number
85. Tput to Clear Terminal
86. Tput to Print Attributes of Terminal Simple
87. Tput to Print Attributes of Terminal More Complex
88. Assign String Variable with Declare
89. Check If Variable Created with Declare
90. n Option for Declare to Nameref Alias
91. Forcing Variable to Integer with Declare
92. Forcing Case with Declare
93. Readonly Variables with Declare
94. Indexed Arrays with Declare
95. Associative Arrays with Declare
96. Define a Function if Not Already Defined Using Declare
97. Automatically Answer Question with yes Command
98. Use And Operator to Run Second Command Only if First Succeeds
99. Use Or Operator to Run Second Command Only if First Fails
100. xargs to operate on all files in directory
101. Wait For Another Command to Complete
102. Combine Kill and Wait Commands
103. Star Wildcard on File Selection
104. Question Mark Wildcard on File Selection
105. Square Bracket on File Selection
106. Parenthesis and Pipe for File Selection Options
107. Brace Expansion Comma Seperated List
108. Brace Expansion Range
109. Brace Expansion with Preamble
110. Operating on List of Files with Brace Expansion
111. Reference Home Directory with Tilde
112. Parameter Expansion for Printing Constant or Variable if Unset
113. Substring Expansion for Printing Part of String
114. Parameter Expansion for Assigning Constant to Variable if Unset
115. Check If File Executable, Set If Not
116. Check If File Is Owned By User, Set If Not
117. wc To Count Lines In A File
118. wc to Count Characters in a File
119. Head Command With Default Args
120. Head Command to Print First 100 Lines
121. Tail Command With Default Args
122. Tail Command to Print Last 100 Lines
123. Find Command to Locate Matching Pattern Files
124. Find Command to Locate Files Based on Date
125. cut Command to Parse Delimited Columns of Data
126. grep Command to Search for Pattern
127. grep Command to Search for Lack of Pattern
128. grep Command to Search for Case Insensitve Pattern
129. grep Command with Wild Cards
130. grep Command to Search All Files in Directory Recursive
131. grep Command to Search for File in a Directory Recursively
132. awk Split On Whitespace
133. awk Print Last Field in Each Line
134. awk Print Only Match of Regex
135. awk With If Else Condition
136. awk With Ternary Operator
137. sed To Replace Matching Text
138. sed To Replace Second Instance of Matching Text on Line
139. sed to Delete Specific Lines
140. sed to Add a Line Before Matched Line
141. sed to Add a Line After Matched Line
142. Sort Data in File with sort Command
143. Sort Data Ignore Case
144. Sort Data numerically
145. Print Unique Data with uniq Command
146. Count Unique Lines in File with Sort, Uniq, and wc
147. Convert Data to Uppercase with tr
148. Convert Data to Lowercase with tr
149. Create a tar File
150. Create a Zipped Tar File
151. Unzip a Compressed Tar File
152. Parse JSON File with jq
153. Print Specific Field in JSON with jq
154. Print Cpu Info With Pseudo Filesystem
155. Print Mem Info With Psuedo Filesystem
156. Print Mounts With Psuedo Filesystem
157. Print Network Stats With Psuedo Filesystem
158. Print Disk Usage with du
159. Print Disk Usage Human Readable with du
160. Create File of Specified Size with dd
161. Time Disk Writing with dd and time
162. Send a Mail with mail Program
163. Send a Mail with mail Program Change Subject
164. Send a Mail with mail Program to Multiple Recipients
165. Send a Mail with mail Program to CC and BCC list
166. Print Mounts Usage with df
167. Send a Mail with mail Program with Encoded Attachment
168. Download Webpage with Curl
169. Post to HTTP with Curl
170. Put Command in Background
171. Resume Command From Background
172. Execute Last Command Again with Bang Bang
173. tee Command to Print to File and Screen

174. Script that receives parameter
```sh
#! /bin/bash
#script that receives parameter

# example 1
echo "First arg: $1"
echo "Second arg: $2"
echo "Second arg: $3"

# example 2
i=1;
for user in "$@"
do
    echo "Username - $i: $user";
    i=$((i + 1));
done
```


Reference
----
[212 Bash Scripting Examples ](https://www.youtube.com/watch?v=q2z-MRoNbgM) </br>
