#!/usr/bin/env bash

sudo apt-get update

echo -e "Installing Gettext..."
bsudo apt-get -y install gettext
ln -s -f /usr/local/opt/gettext/bin/envsubst /usr/local/bin/envsubst

echo -e "Installing Bash completion..."

if [ "$CHROME_INSTALL" == "1" ]; then
    echo -e "Installing Chrome..."
fi

if [ "$GIT_INSTALL" == "1" ]; then
    echo -e "Installing Git..."
    sudo apt-get -y install git
fi

if [ "$GPG_INSTALL" == "1" ]; then
    echo -e "Installing GPG..."
    sudo apt-get -y install gpg
fi

if [ "$DOCKER_INSTALL" == "1" ]; then
    echo -e "Installing Docker..."
    sudo apt-get -y install docker
fi

if [ "$PHP_INSTALL" == "1" ]; then
    echo -e "Installing PHP..."
    sudo apt-get -y install php71
fi

if [ "$COMPOSER_INSTALL" == "1" ]; then
    echo -e "Installing Composer..."
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    mv composer.phar /usr/local/bin/composer
    composer self-update
fi

if [ "$PHPSTORM_INSTALL" == "1" ]; then
    echo -e "Installing PHPStorm..."
    sudo apt-get -y install phpstorm
fi

if [ "$MYSQL_WORKBENCH_INSTALL" == "1" ]; then
    echo -e "Installing MySQL Workbench..."
    sudo apt-get -y install mysqlworkbench
fi

if [ "$POEDIT_INSTALL" == "1" ]; then
    echo -e "Installing Poedit..."
    sudo apt-get -y install poedit
fi

if [ "$POSTMAN_INSTALL" == "1" ]; then
    echo -e "Installing Postman..."
    sudo apt-get -y install postman
fi
