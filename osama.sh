#!/bin/bash

echo -e "\033[31m"
echo "                                     ___  ____    _    __  __    _"
echo "                                    / _ \/ ___|  / \  |  \/  |  / \ "
echo "                                   | | | \___ \ / _ \ | |\/| | / _ \ "
echo "                                   | |_| |___) / ___ \| |  | |/ ___ \ "
echo "                                    \___/|____/_/   \_\_|  |_/_/   \_\ "

echo -e "\033[0m"

sleep 0.5

echo -e "\033[36m                                      Welc0me to Our Special World"

sleep 0.5

read -p "First, Input your Username: " username
echo
read -sp "Second, Input your Password: " password
echo
echo -e "\033[36mThanks,\033[0m so Your Credentials are \033[32m$username \033[0mand \033[34m$password"

sleep 0.5
echo -e "\e[0m"
read -p "Do you want a random ip? y/n " op1

if [ $op1 = "y" ]
then

    echo -e "\e[36m192.168.$((RANDOM % 256)).$((RANDOM % 256))"
elif [ $op1 = "n" ]
then
    read -p "So, Do you want do chain ip's? y\n " op2
    if [ $op2 = "y" ]
    then
        read -p "Give me The number of your chain: " num
        echo "We process it...."
        sleep 1
        for ip in $(seq $num); do echo 192.168.0.$ip; done
    elif [ $op2 = "n" ]
    then
    echo -e "\e[31mwhy are you here?"
    else
    echo -e "\e[0mincorrect input"
    fi
else
echo -e "\e[0mincorrect input"

fi
