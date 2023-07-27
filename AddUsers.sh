#!/bin/bash

##########################################
# Author: Sandeep Nayak
# Date: 26-07-2023
# This script automates the process of adding users to the linux machines.
# Feel free to use it as per your needs.
##########################################
#USER is a local variable scoped only for that particular function
#user_name is a global variable and it's scope expands to the whole script
#a variable declared anywhere without the keyword local is by default a global variable.

set -e #to check for any errors

add_user(){
    local USER="$1"
    local PASS="$2"

    # Check if the user already exists
    #<id "$USER"> is cmd which shows userID details if the user exists and whatever the o/p may be is sent to null using "&>/dev/null" which means the o/p will not be displayed on the terminal
    if id "$USER" &>/dev/null; then
        echo "User '$USER' already exists. Skipping..."
    else
        useradd -m -p "$PASS" "$USER"
        echo "Added $USER successfully to the machine!!"
    fi
}

#MAIN

while ((1))
do
    echo "Enter username:"
    read user_name
    echo "Enter password for the user:"
    read -s password #-s to read the password silently

    add_user "$user_name" "$password"

    echo "Want to Add more users?(Only 'y' will be accepted as yes)"
    read answer

    if [ "$answer" != "y" ]
    then
       break
    fi

done