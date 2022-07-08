#!/usr/bin/env bash


echo $1

case $1 in

*.py)
python3 $1
;;

*.sh)
python3 $1
;;

*.cc)
python3 $1
;;

*)
echo "cannot be opened"
;;

esac

    