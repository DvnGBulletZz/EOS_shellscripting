 #!/usr/bin/env bash

while true; do
    # echo "---heads or tails---- (lowercase)"
    # echo "put in q to quit"
    # read input

    # if [ "$input" == q ]; then
    #     break
    # fi

    while true; do
        echo "heads or tails (lowercase)"
        echo -e "put in q to quit\n"
        read input
        if [ "$input" == q ]; then
            exit
        
        elif [[ "$input" != "heads" && "$input" != "tails" ]]; then
            echo -e "\nwrong input give heads or tails as input"
        else
            break
        fi
        
    done


    randm=$(($RANDOM % 2 + 1))

    if [ $randm = 1 ]; then
        anwser="heads"
    else
        anwser="tails"
    fi

    echo  -e "\nyour anwser is $input"
    echo -e "\nthe coin shows $anwser"
    

    if [ "$input" = "$anwser" ]; then
        echo -e "you won\n"
    else
        echo -e "you lost\n"

    fi
done
