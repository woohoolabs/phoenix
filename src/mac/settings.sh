#!/usr/bin/env bash

echo -e "Setting sleep timeout to 2 minutes when on battery..."
sudo pmset -b sleep 2

echo -e "Setting sleep timeout to 10 minutes when plugged in..."
sudo pmset -b sleep 10

echo -e "Enabling screen saver after 2 minutes..."
sudo osascript -e 'tell application "System Events" to set delay interval of screen saver preferences to 2'

echo -e "Requiring password after sleep..."
sudo defaults write com.apple.screensaver askForPassword -int 1
sudo defaults write com.apple.screensaver askForPasswordDelay -int 0
