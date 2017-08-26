#!/usr/bin/env bash

echo -e "Copying global Git configuration files..."

envsubst < config/git/.gitconfig > /home/$USER/.gitconfig
envsubst < config/git/.gitconfig-woohoo > /home/$USER/.gitconfig-woohoo
envsubst < config/git/.gitignore-woohoo > /home/$USER/.gitignore-woohoo
