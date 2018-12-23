# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/escape/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  git
  pip
  autojump
  sudo
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# ----------------------------
# 2.beautiful oh-my-zsh config
# ----------------------------

# set nvm config
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# set autoenv config
# source $(brew --prefix autoenv)/activate.sh

# set autojump config
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# set docker-compose completions
# autoload -Uz compinit && compinit -i
fpath=(~/.zsh/completion $fpath)

# set globl shadowsocks config
alias runproxy="export http_proxy=http://localhost:1087 https_proxy=http://localhost:1087"
alias disproxy="unset http_proxy https_proxy"

# set pyenv home path config
# /usr/local/lib/python3.7/site-packages
export PYENV_ROOT="/Users/escape/.pyenv"
export PATH="/Users/escape/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# set pyenv openssl lib path
# CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl@1.1)" pyenv install 3.7.0
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"


# -----------------------
# 3. customer server list
# -----------------------

# home server list
alias uh1="ssh escape@192.168.31.101"
alias uh2="ssh escape@192.168.31.102"
alias ch1="ssh escape@191.168.31.201"
alias ch2="ssh escape@191.168.31.202"

# work server list
alias uw1="ssh escape@192.168.50.151"
alias uw2="ssh escape@192.168.50.152"
alias cw1="ssh escape@192.168.50.161"
alias cw2="ssh escape@192.168.50.161"


# ------------------------
# 4. customer alias config
# ------------------------

# set vim alias
alias vi="nvim"
alias vim="nvim"
alias git='LANG=en_US git'

# set shell alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias lr="ls -tRFh"
alias lt="ls -ltFh"

# set brew alias
alias b="brew"
alias bi="brew install"
alias bu="brew uninstall"
alias bl="brew list"
alias bp="brew update"
alias bs="brew search"
alias bri="brew reinstall"
alias bif="brew info"
alias blk="brew link"

# set pip alias
alias p="pip"
alias pi="pip install"
alias piu="pip install --user"
alias pu="pip uninstall"
alias pl="pip list --format=columns"
alias pp="pip install --upgrade pip"

# set pip3 alias
alias p3="pip3"
alias p3i="pip3 install"
alias p3iu="pip3 install --user"
alias p3u="pip3 uninstall"
alias p3l="pip3 list --format=columns"
alias p3p="pip3 install --upgrade pip"

# set pyenv alias
alias py="pyenv"
alias pyi="pyenv install"
alias pyu="pyenv uninstall"
alias pyl="pyenv local"
alias pys="pyenv versions"
alias pyv="pyenv virtualenv"
alias pym="pyenv migrate"

# set tmux alias
alias t="tmux"
alias tml="tmux ls"
alias tms="tmux new -s"
alias tma="tmux a -t"
alias tmk="tmux kill-session -t"
alias tmka="tmux kill-server"

# set hexo alias
alias hi="hexo init"
alias hn="hexo new"
alias hc="hexo clean"
alias hd="hexo g -d"
alias hs="hexo server"
alias hcs="hexo clean && hexo server"

# set common git alias
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
alias gla="git log --graph --decorate --pretty=oneline --abbrev-commit --all"
alias gls="git log --pretty=format:'%s %C(bold blue)(%an)%Creset' --abbrev-commit"
alias glo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias grH="git reset HEAD"
alias grh="git rest --hard"

# set branch git alias
alias gb="git branch"
alias gbr="git branch -r"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gbD="git branch -D"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gm="git merge"
alias gmnf="git merge --no-ff"

# set statsh git alias
alias gt="git stash"
alias gtl="git stash list"
alias gta="git stash apply"
alias gtd="git stash drop"
alias gtp="git stash pop"

# set submodule git alias
alias gsa="git submodule add"
alias gsi="git submodule init"
alias gsu="git submodule update"
alias gsp="git submodule update --remote --merge"

# set other some info git alias
alias gt="git tag"
alias grv="git remote -v"

# set search alias
alias sb="bing"
alias sg="google"
alias sh="github"

# set useful alias
alias mac="m"
alias cmd="tldr"
alias his="history"
alias get="you-get"
alias ip="curl cip.cc"
alias zd="autoload -U compinit && compinit"
alias watch="watch -n 3 -c"
