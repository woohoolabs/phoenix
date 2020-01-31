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

if [ "$PHP_INSTALL" == "1" ]; then
    echo -e "Installing PHP..."
    brew tap homebrew/dupes
    brew tap homebrew/versions
    brew tap homebrew/homebrew-php
    brew install php74
fi

if [ "$COMPOSER_INSTALL" == "1" ]; then
    echo -e "Installing Composer..."
    
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('sha384', 'composer-setup.php') === 'c5b9b6d368201a9db6f74e2611495f369991b72d9c8cbd3ffbc63edff210eb73d46ffbfce88669ad33695ef77dc76976') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"

    mv composer.phar /usr/local/bin/composer
    composer self-update
fi

if [ "$PHPSTORM_INSTALL" == "1" ]; then
    echo -e "Installing PHPStorm..."
    brew cask install jetbrains-toolbox
fi

if [ "$NGINX_INSTALL" == "1" ]; then
    echo -e "Installing NGINX..."
    brew install nginx
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

if [ "$SLACK_INSTALL" == "1" ]; then
    echo -e "Installing Slack..."
    brew cask install slack
fi

if [ "$PHP_DEV_TOOLS_INSTALL" == "1" ]; then
    echo -e "Installing PHP development tools..."
    brew install autoconf automake libtool bison re2c libxml2 openssl icu4c
    brew link bison --force
    brew link libxml2 --force
    brew link icu4c --force
fi
