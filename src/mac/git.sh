#!/usr/bin/env bash

echo -e "Copying global Git configuration files..."

envsubst < config/git/.gitconfig > ~/.gitconfig
envsubst < config/git/.gitconfig-woohoo > ~/.gitconfig-woohoo
envsubst < config/git/.gitignore-woohoo > ~/.gitignore-woohoo
