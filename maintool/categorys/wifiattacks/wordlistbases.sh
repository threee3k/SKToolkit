#! /bin/bash

echo "Select a base down below, or type your own base"
echo "-----------------------------------------------------"
echo "1234567890, (1)"
echo "-----------------------------------------------------"
echo "1234567890abcdef, (2)"
echo "-----------------------------------------------------"
echo "abcdefghijklmnopqrstuvwxyz, (3)"
echo "-----------------------------------------------------"
echo "1234567890ABCDEF, (4)"
echo "-----------------------------------------------------"
echo "ABCDEFGHIJKLMNOPQRSTUVWXYZ, (5)"
echo "-----------------------------------------------------"
echo "1234567890abcdefghijklmnopqrstuvwxyz, (6)"
echo "-----------------------------------------------------"
echo "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ, (7)"
echo "-----------------------------------------------------"

read BASE
echo "Enter minimum and max length, ex: 8 8  6 6"
read LENGTH
echo "Enter wordlist name"
read NAME
if [[ $BASE == '1' ]]
then
    crunch $LENGTH 1234567890 -o $NAME
fi

if [[ $BASE == '2' ]]
then
    crunch $LENGTH 1234567890abcdef -o $NAME
fi

if [[ $BASE == '3' ]]
then
    crunch $LENGTH abcdefghijklmnopqrstuvwxyz -o $NAME
fi

if [[ $BASE == '4' ]]
then
    crunch $LENGTH 1234567890ABCDEF -o $NAME
fi


if [[ $BASE == '5' ]]
then
    crunch $LENGTH ABCDEFGHIJKLMNOPQRSTUVWXYZ -o $NAME
fi

if [[ $BASE == '6' ]]
then
    crunch $LENGTH 1234567890abcdefghijklmnopqrstuvwxyz -o $NAME
fi

if [[ $BASE == '7' ]]
then
    crunch $LENGTH 1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ -o $NAME
fi

else
then
    crunch $LENGTH $BASE -o $NAME
fi