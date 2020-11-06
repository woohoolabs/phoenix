#!/usr/bin/env bash
set -e

if [ "$1" == "config" ]; then

    echo -e "Copying global Git configuration files..."

    envsubst < $BASEPATH/config/git/.gitconfig > ~/.gitconfig
    envsubst < $BASEPATH/config/git/.gitconfig-woohoo > ~/.gitconfig-woohoo
    envsubst < $BASEPATH/config/git/.gitignore-woohoo > ~/.gitignore-woohoo

elif [ "$1" == "help" ]; then

    echo -e "Available subcommands:"
    echo -e "    config: Generate global configuration"
    echo -e "    help  : List subcommands"

else

    $BASEPATH/woohoo git help

fi
