#!/usr/bin/env bash

if [ "$1" == "config" ]; then

    echo -e "Copying SSH configuration file..."

    # Setting up the SSH directory
    mkdir -p ~/.ssh/
    chmod -R 700 ~/.ssh/

    cp ./config/ssh/config ~/.ssh/config
    chmod 644 ~/.ssh/config

elif [ "$1" == "generate" ]; then

    if [ "$2" == "" ]; then
        echo -e "Usage: woohoo ssh generate KEY_NAME YOUR_EMAIL_ADDRESS"
        exit -1
    fi

    # Setting up the SSH directory
    mkdir -p ~/.ssh/
    chmod -R 700 ~/.ssh/

    # Generating the SSH key
    ssh-keygen -t rsa -b 4096 -f ~/.ssh/$2 -C $3

elif [ "$1" == "import" ]; then

    if [ "$2" == "" ]; then
        echo -e "Usage: woohoo ssh import KEY_NAME"
        exit -1
    fi

    # Setting up the SSH directory
    mkdir -p ~/.ssh/
    chmod -R 700 ~/.ssh/

    source ./config/ssh/$2.sh

    # Creating the public key
    echo $SSH_PUBLIC_KEY > ~/.ssh/$2.pub
    chmod 644 ~/.ssh/$2.pub

    # Creating the private key
    echo $SSH_PRIVATE_KEY > ~/.ssh/$2
    chmod 600 ~/.ssh/$2.pub

    rm ./config/ssh/$2.sh

elif [ "$1" == "help" ]; then

    echo -e "Available subcommands:"
    echo -e "    config  : Configure SSH"
    echo -e "    generate: Generate a new key"
    echo -e "    import  : Import your existing key"
    echo -e "    help    : List subcommands"

else

    ./woohoo ssh help

fi
