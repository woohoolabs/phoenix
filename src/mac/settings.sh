#!/usr/bin/env bash
set -e

echo -e "Setting standby delay to 4 hours..."
sudo pmset -a standbydelay 14400

echo -e "Setting timeouts when on battery..."
sudo pmset -b         \
    sleep          10 \
    disksleep      0  \
    displaysleep   5  \
    halfdim        1

echo -e "Setting timeouts when on power adapter..."
sudo pmset -c         \
    sleep          10  \
    disksleep      0  \
    displaysleep   30 \
    halfdim        1  \
    autorestart    1  \
    womp           1

echo -e "Requiring password after sleep..."
sudo defaults write com.apple.screensaver askForPassword -int 1
sudo defaults write com.apple.screensaver askForPasswordDelay -int 0

echo -e "Configuring the default shell..."
sudo chsh -s $DEFAULT_SHELL
