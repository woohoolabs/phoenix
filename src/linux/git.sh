#!/usr/bin/env bash

echo -e "Copying global Git configuration files..."

envsubst < $BASEPATH/config/git/.gitconfig > ~/.gitconfig
envsubst < $BASEPATH/config/git/.gitconfig-woohoo > ~/.gitconfig-woohoo
envsubst < $BASEPATH/config/git/.gitignore-woohoo > ~/.gitignore-woohoo
