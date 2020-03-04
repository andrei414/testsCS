#!/bin/bash
FILE="file.txt"
STRING="error"

if  grep -q "$STRING" "$FILE" ; then
         exit 1 ; 
else
         echo 'the string does not exist' ; 
fi