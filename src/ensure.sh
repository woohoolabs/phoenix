#!/usr/bin/env bash

echo -e "Homebrew:"
brew -v

echo -e "Git:"
git --version

echo -e "GPG:"
gpg --version

echo -e "Docker:"
docker --version

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
