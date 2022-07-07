 #!/usr/bin/env bash

while true; do
    read input

    randm=$(($RANDOM % 2 + 1))

    if [ $randm = 1 ]; then
        anwser="head"
    else
        anwser="tails"
    fi

    echo "your anwser is $input"
    echo "the coin shows $anwser"

    if [ "$input" = "$anwser" ]; then
        echo "you won"
    else
        echo "you lost"

    fi

   



done
