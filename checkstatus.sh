#!/usr/bin/env bash


rm $3;

for file in $1/*;
do
 if $2 $file > /dev/null 2> /dev/null; then
    echo $file gelukt >> $3 
 else
 
    echo $file niet gelukt >> $3; 
    
 fi


done

# files=$(ls $1)
# for file in $files
# do
#     exec $2 "$1/$file" >> $3
# done