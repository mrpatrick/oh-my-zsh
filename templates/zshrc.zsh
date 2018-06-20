# Path to your oh-my-zsh installation.
#export ZSH=/Users/patrick/.oh-my-zsh
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="pygmalion"
ZSH_THEME="mrpatrick"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git emacs-cli docker colorize github)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Docker
export PATH=$PATH:/Users/patrick/projects/docker-swarm/scripts

# GO
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH="$HOME/projects/go/"
export PATH=$PATH:$GOPATH/bin
# export MANPATH="/usr/local/man:$MANPATH"

# GNU
export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
export MANPATH="$MANPATH:/usr/local/opt/coreutils/libexec/gnuman"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='emacs'
# else
#   export EDITOR='emacs'
# fi
EMACS=$(which emacs)
export EDITOR="$EMACS -nw"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
# See ~/.ssh/config
export STAGING=localhost:2374
export STAGE=localhost:2378
export PROD_EUWEST=localhost:2377
export PROD_EAST=localhost:2375
export SANDBOX=localhost:2376

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias swarm_stage="export DOCKER_HOST=$STAGE"
alias swarm_staging="export DOCKER_HOST=$STAGING"
alias swarm_sandbox="export DOCKER_HOST=$SANDBOX"
alias swarm_prod_east="export DOCKER_HOST=$PROD_EAST"
alias swarm_prod_euwest="export DOCKER_HOST=$PROD_EUWEST"
