 #!/usr/bin/env bash

while true; do
    echo "---heads or tails---- (lowercase)"
    echo "put in q to quit"
    read input

    if [ "$input" == q ]; then
        break
    fi

    while [[ "$input" != "heads" && "$input" != "tails" ]]; do
        echo "wrong input give heads or tails as input"
        echo "heads or tails (lowercase)"
        read input
    done


    randm=$(($RANDOM % 2 + 1))

    if [ $randm = 1 ]; then
        anwser="heads"
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
