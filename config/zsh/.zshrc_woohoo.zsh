#!/bin/zsh

export PATH=$HOME/bin:/usr/local/bin:/usr/bin:$PATH

alias woohoo='~/woohoo/phoenix/woohoo'
alias entrainr='make --directory=~/woohoo/entrainr/'

ZSH=$HOME/.oh-my-zsh

export DEFAULT_USER="$USER"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Preferred editor for local and remote sessions
export EDITOR="nano"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs)
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
POWERLEVEL9K_MODE="awesome-patched"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras wd docker)

source $ZSH/oh-my-zsh.sh
