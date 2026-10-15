#!/bin/bash

clear

sleep 0.5
echo -e "\033[31m"

echo "/ ___|  ___ __ _ _ __  _ __   ___ _ __"
echo "\___ \ / __/ _ | _ \|drc _ \ / _ \ __| "
echo " ___) | (_| (_| | | | | | | |  __/ | "
echo "|____/ \___\__,_|_| |_|_| |_|\___|_| "
sleep 0.3
echo "#####################################"
sleep 0.3
echo "Version 1.0"
sleep 0.3
echo "Developed by DRCX..."
echo -e "\033[0m"

sleep 0.5

echo -e "\e[36mWelcome to our World"
sleep 0.5
echo
echo -e "\e[0m"
read -p "Firstly, Input your username: " username
echo
read -sp "Input your Password: " password
echo
echo""
sleep 0.5
echo -e "Welcome, \e[36m$username :)"

sleep 0.5
echo""
echo -e "\e[0mInput your choice: "
echo""
echo " 1) Scan Ports"
echo""
echo " 2) ping"
echo""
read -p "What is your choice: " inp1
echo""

if [ "$inp1" = "1" ]
then
    read -p "Enter your target ip  " tip
    read -p "Enter your target's port: " tpo
    echo
    for scan in $(seq 1);do nmap -p $tpo $tip;done | grep "/tcp"

elif [ "$inp1" = "2" ]
then
    read -p "Enter your target's ip: " ip
    read -p "Count of pinging: " pingc
    for ping in $pingc; do ping $ip; done
else:
echo"Invalid Command"
fi



