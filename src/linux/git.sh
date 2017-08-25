#!/usr/bin/env bash

echo -e "Copying global Git configuration files..."

envsubst < config/git/.gitconfig > /home/$USER_NAME/.gitconfig
envsubst < config/git/.gitconfig-woohoo > /home/$USER_NAME/.gitconfig-woohoo
envsubst < config/git/.gitignore-woohoo > /home/$USER_NAME/.gitignore-woohoo
