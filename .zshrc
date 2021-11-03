###### alias ######
###### alias ######
###### alias ######
alias LS="ls"

alias zshconfig="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias testingconsul="prodconsul --config $HOME/.prodconsul/testing.ini"
alias consuld="nohup consul agent -dev > /dev/null &"
alias tc="prodconsul --config ~/.prodconsul/testing.ini --privateKey ~/.ssh/id_rsa"
alias pc="prodconsul --config ~/.prodconsul/prod.ini --privateKey ~/.ssh/id_rsa"

alias tn="tmux new -s"
alias ta="tmux a -t"
alias tl="tmux ls"
alias tk="tmux kill-session -t"
alias tka="tmux kill-serve"

alias cm="gcc -Wall -g -o"
alias cppm="g++ -o"

alias sshme="ssh-add ~/.ssh/id_rsa.owner"
alias sshcm="ssh-add ~/.ssh/id_rsa"

alias cdgo="cd $GOPATH"
alias cdgoproject="cd $GOPATH/src/gitee.com/superwhys"
alias cdcm="cd ~/CloudMall"

###### sql ######
###### sql ######
alias mysqlup="brew services start mysql"
alias mysqldown="brew services stop mysql"
alias mongoup="brew services start mongodb-community@4.4"
alias mongodown="brew services stop mongodb-community@4.4"



###### function ######
###### function ######
###### function ######

function sshagent() {
  eval `ssh-agent -s`
  ssh-add
}

function gitconfiginfo(){
	git config user.name
	git config user.email
}

function gitconfigme() {
  eval `ssh-agent -s`
  sshme
  git config user.name Superyong
  git config user.email 269085434@qq.com

  gitconfiginfo
}

function gitconfigcm() {
    eval `ssh-agent -s`
    sshcm
    git config user.name yanghaowen
    git config user.email haowen.yang313@imaygou.com

	gitconfiginfo
}

function kafkastart() {
	brew services start zookeeper
	brew services start kafka
}

function kafkastop() {
	brew services stop zookeeper
	brew services stop kafka
}

###### export ######
###### export ######
###### export ######

#export GIT_PATH=/usr/local/git
#export PATH=$PATH:~/.consul:~/.prodconsul:$GIT_PATH/bin:/usr/local/mysql/bin
#export GOPATH=/Users/yong/Program/Go/GoData
#export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/yong/.oh-my-zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="murilasso"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
