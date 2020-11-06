#!/usr/bin/env bash
set -e

if [ "$1" == "config" ]; then

    echo -e "Copying GPG configuration file..."

    mkdir -p ~/.gnupg/
    cp $BASEPATH/config/gpg/gpg.conf ~/.gnupg/gpg.conf
    chmod 600 ~/.gnupg/gpg.conf

elif [ "$1" == "generate" ]; then

    if [ "$2" == "" ]; then
        echo -e "Usage: woohoo gpg generate USER_NAME USER_EMAIL"
        exit -1
    fi

    if [ "$3" == "" ]; then
        echo -e "Usage: woohoo gpg generate USER_NAME USER_EMAIL"
        exit -1
    fi

    cat > /tmp/gpg.txt <<EOF
     %echo Generating a basic OpenPGP key
     Key-Type: RSA
     Key-Length: 4096
     Subkey-Type: default
     Name-Real: $2
     Name-Email: $3
     Expire-Date: 0
     %ask-passphrase
     %commit
EOF

    gpg --batch --gen-key /tmp/gpg.txt
    rm /tmp/gpg.txt

elif [ "$1" == "import" ]; then

    if [ "$2" == "" ]; then
        echo -e "Usage: woohoo gpg import KEY_NAME"
        exit -1
    fi

    gpg --import $BASEPATH/config/gpg/$2.asc
    rm $BASEPATH/config/gpg/$2.asc

elif [ "$1" == "help" ]; then

    echo -e "Available subcommands:"
    echo -e "    config  : Configure GPG"
    echo -e "    generate: Generate a new key"
    echo -e "    import  : Import your existing key"
    echo -e "    help    : List subcommands"

else

    $BASEPATH/woohoo gpg help

fi
