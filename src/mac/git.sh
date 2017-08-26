#!/usr/bin/env bash

if [ "$1" == "config" ]; then

    echo -e "Copying global Git configuration files..."

    envsubst < config/git/.gitconfig > ~/.gitconfig
    envsubst < config/git/.gitconfig-woohoo > ~/.gitconfig-woohoo
    envsubst < config/git/.gitignore-woohoo > ~/.gitignore-woohoo

elif [ "$1" == "help" ]; then

    echo -e "Available subcommands:"
    echo -e "    config: Generate global configuration"
    echo -e "    help  : List subcommands"

else

    ./woohoo git help

fi
