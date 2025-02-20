# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="pixegami-agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  docker
  docker-compose
  kubectl
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
#

# Start in Insert mode by default
bindkey -v
# Map Ctrl+; to toggle between insert and normal mode
# function toggle_vi_mode() {
#   if [[ $KEYMAP == vicmd ]]; then
#     bindkey -v   # Switch to Insert Mode
#     echo "Insert Mode"
#   else
#     bindkey -v   # Switch to Normal Mode
#     echo "Normal Mode"
#   fi
# }

bindkey "^;" toggle_vi_mode
bindkey -M viins '\e' vi-cmd-mode 
bindkey -M vicmd '\e' vi-ins-mode
bindkey '^R' _history-complete-older   # Ctrl+R for older history
bindkey '^N' _history-complete-newer   # Ctrl+N for newer history

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
export SCRIPT_DIR="$HOME/.config/i3blocks/i3blocks/scripts"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export BROWSER=microsoft-edge

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export SCRIPT_DIR="$HOME/.config/i3blocks/i3blocks/scripts"

# export JAVA_HOME=/usr/local/jdk-17.0.12
export JAVA_HOME=/usr/local/jdk-23.0.1
# export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

export PATH="/home/vtzy/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/vtzy/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
export PATH="$PATH:$HOME/.config/composer/vendor/bin" 

export EDITOR=nvim
export VISUAL=nvim
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

export SPARK_HOME=/home/shared/spark-3.4.4-bin-hadoop3
export PATH=$PATH:$SPARK_HOME/bin
export HADOOP_HOME=/home/shared/hadoop-3.4.0
export PATH=$PATH:$HADOOP_HOME/bin

export GTK_USE_PORTAL=1
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias showneo="neofetch --ascii_colors 6 7 --colors 2 2 2 2"
alias dororo="ascii-image-converter ~/Pictures/wallpaper/wp4931880-dororo-kawaii-wallpapers.jpg -bC"
alias kubectl="minikube kubectl --"
alias oe='cd ~/Documents/ownego/recommendation-system-sdk-2024'
alias i3cf='nvim ~/.config/i3/config'
alias q='exit'
