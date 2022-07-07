 #!/usr/bin/env bash
rm passwordfile

echo "name: "

read name
if [ -z "$name" ]; then
    name=$(whoami)
fi

echo "password:"
read -s password

pass_wcount=$(echo $password | wc -c)

while [ $pass_wcount -lt 8 ]; do
    echo "Password has to be longer than 8 characters"
    echo "password:"
    read -s password
    pass_wcount=$(echo $password | wc -c)
done

echo "Repeat password:"
read -s repeat_password

while [ "$repeat_password" != "$password" ]; do
    echo "Password is not the same"
    echo "Repeat password:"
    read -s wachtwoordcheck
done


echo "$name" >> $1
echo $password | md5sum >> $1 
# read name

# if [ -z "$name" ]; then
#     name=$(whoami)
# fi


# echo "password: "
# read -s password

# password_wcount = $(echo "$password" | wc -w)

# while [ $password_wcount -lt 8 ]; do
#     echo "Wassword has to be longer than 8 characters "
#     echo "Password: "
#     read -s password
#     password=$(echo $wachtwoord | wc -c)
# done

# echo "repeat password:" 
# read -s repeat_password

# while[ "$password"!=  "$repeat_password" ]; do
#     echo "password is not the same as the previous"
#     echo "repeat_password: "
#     read -s repeat_password
# done

# echo "$name" >> $1
# echo $password | md5sum >> $1 

