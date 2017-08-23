#!/usr/bin/env bash

echo -e "Homebrew:"
brew -v

echo -e "Git:"
git --version

echo -e "Chrome:"
brew cask info google-chrome

echo -e "GPG:"
gpg --version

echo -e "Docker for Mac:"
brew cask info docker

echo -e "Docker:"
docker --version

echo -e "Virtualbox:"
brew cask info virtualbox

echo -e "Vagrant:"
brew cask info vagrant

echo -e "Docker Compose:"
docker-compose --version

echo -e "Docker Machine:"
docker-machine --version

echo -e "Virtualbox:"
virtualbox -v

echo -e "Vagrant:"
vagrant -v

echo -e "PHP:"
php -v

echo -e "Composer:"
composer -v

echo -e "PHPStorm:"
brew cask info phpstorm

echo -e "MySQL Workbench:"
brew cask info mysqlworkbench

echo -e "Poedit:"
brew cask info poedit

echo -e "Postman:"
brew cask info postman
