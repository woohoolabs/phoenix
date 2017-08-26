#!/usr/bin/env bash

if [ "$1" == "generate" ]; then

    if [ "$2" == "" ]; then
        echo -e "Usage: woohoo gpg generate"
        exit -1
    fi

    # Generating the GPG key
    gpg --gen-key

elif [ "$1" == "import" ]; then

    if [ "$2" == "" ]; then
        echo -e "Usage: woohoo gpg import KEY_NAME"
        exit -1
    fi

    # Creating the public key

    # Creating the private key

    rm $BASEPATH/config/ssh/$2.sh

elif [ "$1" == "help" ]; then

    echo -e "Available subcommands:"
    echo -e "    generate: Generate a new key"
    echo -e "    import  : Import your existing key"
    echo -e "    help    : List subcommands"

else

    $BASEPATH/woohoo gpg help

fi
