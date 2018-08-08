#!/bin/zsh

export PATH=$HOME/bin:/usr/local/bin:/usr/bin:$PATH

alias woohoo='~/woohoo/phoenix/woohoo'
alias entrainr='make --directory=~/woohoo/entrainr/'
alias lakasok='make --directory=~/woohoo/debrecenilakasok/'

alias bench='brew services restart php && brew services restart nginx && (cd ~/woohoo/php-di-container-benchmarks && ./benchmark.sh host http://localhost:8888) && brew services stop nginx && brew services stop php)
alias bench_up='brew services start php && brew services start nginx'
alias bench_down='brew services stop php && brew services stop nginx'

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
plugins=(git git-extras wd docker vagrant)

source $ZSH/oh-my-zsh.sh
