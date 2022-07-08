#!/usr/bin/env bash


echo $1

case $1 in

*.py)
python3 $1
;;

*.sh)
bash $1
;;

*.cc)
cat $1
;;

*)
echo "cannot be opened"
;;

esac

    