#!/usr/bin/env bash

echo -e "Copying global Git configuration files..."

envsubst < config/.gitconfig > /Users/$USER_NAME/.gitconfig
envsubst < config/.gitconfig-woohoo > /Users/$USER_NAME/.gitconfig-woohoo
envsubst < config/.gitignore-woohoo > /Users/$USER_NAME/.gitignore-woohoo
