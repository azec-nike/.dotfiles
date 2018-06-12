# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/azec1/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="materialshell"
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
plugins=(git zsh-autosuggestion zsh-syntax-highlighting)

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

########################
######ALIASES ##########
########################
alias gr="./gradlew"    #Gradlew wrapper alias
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"
############################
####SHELL CUSTOMIZATIONS####
###########################
#ZSH Syntax Highlighting Plugin
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'
source ~/.fonts/*.sh
source ~/.powerlevelrc
#You may need to manually set your language environment
#export LANG=en_US.UTF-8

#Configure JDK
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"
#export LOCAL_BIN="/usr/local/bin"
#export PATH=$LOCAL_BIN:$PATH
#export PATH=$JAVA_HOME/bin:$PATH

function setjdk() {
  if [ $# -ne 0 ]; then
     removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
     if [ -n "${JAVA_HOME+x}" ]; then
        removeFromPath $JAVA_HOME
    fi
    export JAVA_HOME=`/usr/libexec/java_home -v $@`
    export PATH=$JAVA_HOME/bin:$PATH
  fi
}
function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
setjdk 1.8

export LOCAL_BIN="/usr/local/bin"
export PATH=$LOCAL_BIN:$PATH

#Kubectl

export KUBECTL_BIN=$HOME/bin
export PATH=$KUBECTL_BIN:$PATH
export KUBECONFIG=$KUBECONFIG:~/.kube/config-azec-first-cluster

#Configure GRADLE
export GRADLE_HOME='/usr/local/opt/gradle/libexec/'
export PATH=$PATH:$GRADLE_HOME/bin

#Configure pyenv
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Use sublimetext for editing config files
alias zshconfig="vi ~/.zshrc"
export SQUID_HOME="/usr/local/opt/squid_toolkit"
export PATH=$SQUID_HOME:$PATH

#Configure SDKMAN
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/amerzec/.sdkman"
[[ -s "/Users/amerzec/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/amerzec/.sdkman/bin/sdkman-init.sh"
