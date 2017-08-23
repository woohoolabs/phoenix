#!/usr/bin/env bash

echo -e "Installing Xcode..."
xcode-select --install

echo -e "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo -e "Installing Chrome..."
brew cask install google-chrome

echo -e "Installing Bash completion..."
brew install bash-completion
brew tap homebrew/completions

echo -e "Installing Git..."
brew install git
brew switch 2.14.1

echo -e "Installing GPG Suite..."
brew install gpgtools

echo -e "Installing Docker..."
brew cask install docker

echo -e "Installing Virtualbox..."
brew cask install virtualbox

echo -e "Installing Vagrant..."
brew cask install vagrant
brew cask install vagrant-manager

echo -e "Installing PHP..."
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew install php71

echo -e "Installing Composer..."
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
composer self-update

echo -e "Installing MySQL Workbench..."
brew cask install mysqlworkbench
