# ---------------------------------- 
# 1.oh-my-zsh original configuration
# ---------------------------------- 

# Path to your oh-my-zsh installation.
export ZSH="/Users/Escape/.oh-my-zsh"

# robbyrussell, af-magic, miloshadzic, agnoster
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  git
  pip
  # use j to jump
  autojump
  # double ecs to sudo
  sudo
  # web search info
  web-search
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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# ----------------------------
# 2.beautiful oh-my-zsh config
# ----------------------------

# set nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# set autoenv config
source $(brew --prefix autoenv)/activate.sh

# set autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# set docker-compose completions
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# set globl shadowsocks
alias runproxy="export http_proxy=http://localhost:1087 https_proxy=http://localhost:1087"
alias disproxy="unset http_proxy https_proxy"

# set pyenv home path config
export PYENV_ROOT="/Users/Escape/.pyenv"
export PATH="/Users/Escape/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# set pyenv openssl lib path
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"


# ------------------------
# 3. customer alias config
# ------------------------

# set vim command config
alias vi="nvim"
alias vim="nvim"

# set shell command config
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias lr="ls -tRFh"
alias lt="ls -ltFh"


# set brew command config
alias b="brew"
alias bi="brew install"
alias bu="brew uninstall"
alias bl="brew list"
alias bp="brew update"
alias bs="brew search"
alias bri="brew reinstall"
alias bif="brew info"
alias blk="brew link"

# set pip command config
alias p="pip"
alias pi="pip install"
alias piu="pip install --user"
alias pu="pip uninstall"
alias pl="pip list --format=columns"
alias pp="pip install --upgrade pip"

# set tmux command config
alias t="tmux"
alias tml="tmux ls"
alias tms="tmux new -s"
alias tma="tmux a -t"
alias tmk="tmux kill-session -t"
alias tmka="tmux kill-server"

# set hexo command config
alias hi="hexo init"
alias hn="hexo new"
alias hc="hexo clean"
alias hd="hexo g -d"
alias hs="hexo server"
alias hcs="hexo clean && hexo server"

# set git command config
alias g="git"
alias gi="git init"
alias gc="git clone"
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias gd="git diff"
alias gdw="git diff --word-diff"
alias gl="git log" 
alias glo="git log --graph --pretty=oneline --abbrev-commit"
alias gb="git branch"
alias gbr="git branch -r"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gbD="git branch -D"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gm="git merge"
alias gmof="git merge --no-ff"
alias grH="git reset HEAD"
alias grh="git rest --hard"
alias gt="git stash"
alias gtl="git stash list"
alias gta="git stash apply"
alias gtd="git stash drop"
alias gtp="git stash pop"
alias gt="git tag"

# set search command config
alias sb="bing"
alias sg="google"
alias sh="github"

# set other useful config
alias h="tldr"
alias his="history"
alias ip="curl ip.cn"
alias zd="autoload -U compinit && compinit"
