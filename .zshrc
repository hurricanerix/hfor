# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin
export PATH=$PATH:$HOME/Library/Python/2.7/bin/
export PATH=$PATH:/usr/texbin/
export PATH=$PATH:$HOME/workspace/hfor/bin

. /Users/rhawkins/code/powerline/powerline/bindings/zsh/powerline.zsh

source `which virtualenvwrapper.sh`
export PIP_VIRTUALENV_BASE=$HOME/.workspace_envs
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

export VIRTUAL_ENV_DISABLE_PROMPT=1
export VIRTUALENV_DISTRIBUTE=true
export WORKON_HOME=$HOME/.workspace_envs

syspip(){
   PIP_REQUIRE_VIRTUALENV="" sudo pip "$@"
}

alias mkvirtualenv2="mkvirtualenv -p /Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7 $@"
alias mkvirtualenv3="mkvirtualenv -p /Library/Frameworks/Python.framework/Versions/3.3/bin/python3.3 $@"
