#!/usr/bin/env bash

if [ "$1" == "config" ]; then

    echo -e "Copying GPG configuration file..."

    # Setting up the SSH directory
    mkdir -p ~/.gnupg/

    cp $BASEPATH/config/gpg/gpg.conf ~/.gnupg/gpg.conf
    chmod 600 ~/.gnupg/gpg.conf

elif [ "$1" == "generate" ]; then

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

    gpg --import $BASEPATH/config/gpg/$2.asc
    rm $BASEPATH/config/gpg/$2.sh

elif [ "$1" == "help" ]; then

    echo -e "Available subcommands:"
    echo -e "    config  : Configure GPG"
    echo -e "    generate: Generate a new key"
    echo -e "    import  : Import your existing key"
    echo -e "    help    : List subcommands"

else

    $BASEPATH/woohoo gpg help

fi
