#!/usr/bin/env bash

echo -e "Copying global Git configuration files..."

envsubst < $BASEPATH/config/git/.gitconfig > /home/$USER/.gitconfig
envsubst < $BASEPATH/config/git/.gitconfig-woohoo > /home/$USER/.gitconfig-woohoo
envsubst < $BASEPATH/config/git/.gitignore-woohoo > /home/$USER/.gitignore-woohoo
