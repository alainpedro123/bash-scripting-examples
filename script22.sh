#! /bin/bash

ln -s new-file.txt link1
ls

echo "Echoing from the the file link1" >> link1

# link is the copy of file new-file.txt

cat link1