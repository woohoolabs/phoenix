#!/usr/bin/env bash

echo -e "Installing Xcode..."
xcode-select --install

echo -e "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo -e "Installing Gettext..."
brew install gettext
ln -s -f /usr/local/opt/gettext/bin/envsubst /usr/local/bin/envsubst

echo -e "Installing Bash completions..."
brew install bash-completion
brew tap homebrew/completions
brew install docker-completion
brew install docker-compose-completion
brew install docker-machine-completion
brew install vagrant-completion

if [ "$ZSH_INSTALL" == "1" ]; then
    echo -e "Installing Zsh..."
    brew install zsh

    echo -e "Installing iTerm2..."
    brew cask install iterm2

    echo -e "Installing Oh-My-Zshell..."
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone --depth 1 https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

    echo -e "Installing Powerline fonts..."
    git clone https://github.com/powerline/fonts.git /Library/Fonts/Powerline\ Fonts
    powerline-daemon -q
    powerline_base=$(pip show powerline-status | awk '{FS = ": "} $1 ~ /Location/ {print $2}')
    source "${powerline_base}/powerline/bindings/zsh/powerline.zsh"
fi

if [ "$CHROME_INSTALL" == "1" ]; then
    echo -e "Installing Chrome..."
    brew cask install google-chrome
fi

if [ "$GIT_INSTALL" == "1" ]; then
    echo -e "Installing Git..."
    brew install git
    brew cask install github
fi

if [ "$GPG_INSTALL" == "1" ]; then
    echo -e "Installing GPG Suite..."
    brew cask install gpg-suite
fi

if [ "$DOCKER_INSTALL" == "1" ]; then
    echo -e "Installing Docker..."
    brew cask install docker
fi

if [ "$VIRTUALBOX_INSTALL" == "1" ]; then
    echo -e "Installing Virtualbox..."
    brew cask install virtualbox
fi

if [ "$VAGRANT_INSTALL" == "1" ]; then
    echo -e "Installing Vagrant..."
    brew cask install vagrant
    brew cask install vagrant-manager
fi

if [ "$PHP_INSTALL" == "1" ]; then
    echo -e "Installing PHP..."
    brew tap homebrew/dupes
    brew tap homebrew/versions
    brew tap homebrew/homebrew-php
    brew install php72
fi

if [ "$COMPOSER_INSTALL" == "1" ]; then
    echo -e "Installing Composer..."
    
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt';
    unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"

    mv composer.phar /usr/local/bin/composer
    composer self-update
fi

if [ "$PHPSTORM_INSTALL" == "1" ]; then
    echo -e "Installing PHPStorm..."
    brew cask install phpstorm
fi

if [ "$MYSQL_WORKBENCH_INSTALL" == "1" ]; then
    echo -e "Installing MySQL Workbench..."
    brew cask install mysqlworkbench
fi

if [ "$POEDIT_INSTALL" == "1" ]; then
    echo -e "Installing Poedit..."
    brew cask install poedit
fi

if [ "$POSTMAN_INSTALL" == "1" ]; then
    echo -e "Installing Postman..."
    brew cask install postman
fi
