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
    read -s repeat_password
done

echo "$name" >> $1
echo $password | md5sum >> $1 
