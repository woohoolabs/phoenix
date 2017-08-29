#!/usr/bin/env bash

if [ "$CHROME_INSTALL" == "1" ]; then
    echo -e "Chrome:"
fi

if [ "$GIT_INSTALL" == "1" ]; then
    echo -e "Git:"
    git --version
fi

if [ "$GPG_INSTALL" == "1" ]; then
    echo -e "GPG:"
    gpg --version
fi

if [ "$DOCKER_INSTALL" == "1" ]; then
    echo -e "Docker for Mac:"

    echo -e "Docker:"
    docker --version

    echo -e "Docker Compose:"
    docker-compose --version

    echo -e "Docker Machine:"
    docker-machine --version
fi

if [ "$VIRTUALBOX_INSTALL" == "1" ]; then
    echo -e "Virtualbox:"
fi

if [ "$VAGRANT_INSTALL" == "1" ]; then
    echo -e "Vagrant:"
    vagrant -v
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
fi

if [ "$MYSQL_WORKBENCH_INSTALL" == "1" ]; then
    echo -e "MySQL Workbench:"
fi

if [ "$POEDIT_INSTALL" == "1" ]; then
    echo -e "Poedit:"
fi

if [ "$POSTMAN_INSTALL" == "1" ]; then
    echo -e "Postman:"
fi
