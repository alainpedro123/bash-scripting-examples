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