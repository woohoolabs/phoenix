#!/usr/bin/env bash

echo -e "Setting sleep timeout to 2 minutes when on battery..."
sudo pmset -b sleep 2

echo -e "Setting sleep timeout to 10 minutes when plugged in..."
sudo pmset -b sleep 10

echo -e "Enable screen saver after 2 minutes..."
sudo osascript -e 'tell application "System Events" to set delay interval of screen saver preferences to 2'

echo -e "Require password after sleep..."
sudo osascript -e 'tell application "System Events" to set require password to wake of security preferences to true'
