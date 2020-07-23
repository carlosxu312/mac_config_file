#[ If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mac/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"


# powerlevel9k主题配置
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="255"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="red"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_TIME_BACKGROUND='255'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
###### powerlevel9k 配置 end #######

# zsh主题设置
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions git zsh-syntax-highlighting web-search git-open extract golang laravel5 autojump)

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
eval $(thefuck --alias)
alias ssh="ssh -X"
alias s="ssh -X"
alias md="mkdir -p"
alias rd="rmdir"
alias df="df -h"
alias mv="mv -i"
alias rmf="rm -rf"
alias slink="link -s"
alias l="ls -l"
alias la="ls -a"
alias ll="ls -la"
alias lt="ls -lhtrF"
alias l.="ls -lhtrdF .*"
alias grep="grep --color=auto"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias zb="cat /dev/urandom | hexdump -C | grep --color=auto \"ca fe\""
alias mtr="/usr/local/bin/mtr"
alias gs="git status"
alias gsm="git summary"
alias ga='git add'
alias gd='git diff'
alias gf='git fetch'
alias grv='git remote -v'
alias grb='git rebase'
alias gbr='git branch'
alias gpl="git pull"
alias gps="git push"
alias gco="git checkout"
alias gl="git log"
alias gc="git commit -m"
alias gm="git merge"
alias pro="proxychains4"
alias gb="go build"
alias vi="vim"

#For docker
alias dm="docker-machine"
alias di="docker images"
alias dps="docker ps"
alias dsp="docker stop"
alias ds="docker start"
alias dl="docker logs --tail=50"
alias drm="docker rmi"
alias des="docker-compose"
#redis
alias redisd="redis-server /usr/local/etc/redis.conf"
alias ra="ranger"
########## alias end  ###############

# 命令高亮模块
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# 隐藏用户名
DEFAULT_USER=$USER
# 未知作用
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# Go环境配置
export GOPATH=/Users/mac/Documents/Code/Go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# coreutils(颜色方面) 配置
# if brew list | grep coreutils > /dev/null ; then
#  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
#  alias ls='ls -F --show-control-chars --color=auto'
#  eval `gdircolors -b $HOME/.dir_colors`
# fi
source ~/.bash_profile
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
