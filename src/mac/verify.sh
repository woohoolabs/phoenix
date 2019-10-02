#!/usr/bin/env bash

echo -e "Homebrew:"
brew -v

if [ "$ZSH_INSTALL" == "1" ]; then
    echo -e "ZSH:"
    zsh --version
fi

if [ "$CHROME_INSTALL" == "1" ]; then
    echo -e "Chrome:"
    brew cask info google-chrome
fi

if [ "$GIT_INSTALL" == "1" ]; then
    echo -e "Git:"
    git --version
fi

if [ "$GPG_INSTALL" == "1" ]; then
    echo -e "GPG Suite:"
    brew cask info gpgtools

    echo -e "GPG:"
    gpg --version
fi

if [ "$DOCKER_INSTALL" == "1" ]; then
    echo -e "Docker for Mac:"
    brew cask info docker

    echo -e "Docker:"
    docker --version

    echo -e "Docker Compose:"
    docker-compose --version

    echo -e "Docker Machine:"
    docker-machine --version
fi

if [ "$PHP_INSTALL" == "1" ]; then
    echo -e "PHP:"
    php -v
fi

if [ "$COMPOSER_INSTALL" == "1" ]; then
    echo -e "Composer:"
    composer -v
fi

if [ "$PHPSTORM_INSTALL" == "1" ]; then
    echo -e "PHPStorm:"
    brew cask info phpstorm
fi

if [ "$NGINX_INSTALL" == "1" ]; then
    echo -e "Nginx:"
    brew info nginx
fi

if [ "$MYSQL_WORKBENCH_INSTALL" == "1" ]; then
    echo -e "MySQL Workbench:"
    brew cask info mysqlworkbench
fi

if [ "$POEDIT_INSTALL" == "1" ]; then
    echo -e "Poedit:"
    brew cask info poedit
fi

if [ "$POSTMAN_INSTALL" == "1" ]; then
    echo -e "Postman:"
    brew cask info postman
fi
