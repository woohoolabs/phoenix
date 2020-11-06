#!/usr/bin/env bash
set -e

if [ "$1" == "config" ]; then

    echo -e "Copying Bash configuration files..."

    cp $BASEPATH/config/bash/.bash_profile ~/.bash_profile
    cp $BASEPATH/config/bash/.bash_profile_woohoo.sh ~/.bash_profile_woohoo.sh

elif [ "$1" == "help" ]; then

    echo -e "Available subcommands:"
    echo -e "    config: Generate configuration"
    echo -e "    help  : List subcommands"

else

    $BASEPATH/woohoo bash help

fi
