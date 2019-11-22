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
  git
  pip
  sudo
  autojump
  web-search
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-completions
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

# set terminal env
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"

# set globl shadowsocks config
alias runproxy="export http_proxy=http://127.0.0.1:8001; export HTTP_PROXY=http://127.0.0.1:8001; export https_proxy=http://127.0.0.1:8001; export HTTPS_PROXY=http://127.0.0.1:8001"
alias disproxy="unset http_proxy HTTP_PROXY https_proxy HTTPS_PROXY"

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

# set spacevim config
export PATH="$PATH:/Users/escape/Library/Python/2.7/bin"

# set docker app completion
source <(docker-app completion zsh) &> /dev/null

# -----------------------
# 3. customer server list
# -----------------------


# ------------------------
# 4. customer alias config
# ------------------------

# set vim alias
alias vi="nvim"
alias vim="nvim"
alias git="LANG=en_US git"
alias config="vim ~/.zshrc"
alias reload="source ~/.zshrc"

# set shell alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias rm="rmtrash"
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
# alias hi="hexo init"
# alias hn="hexo new"
# alias hc="hexo clean"
# alias hd="hexo g -d"
# alias hs="hexo server"
alias hcs="hexo clean && hexo server"

# set common git alias
alias g="git"
alias gi="git init"
alias gc="git clone"
alias gcs="git clone --recursive"
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gcm="git commit -m"
alias gcmm="git cz"
alias gps="git push"
alias gpl="git pull"
alias gd="git diff"
alias gdc="git diff --cached"
alias gdH="git diff HEAD"
alias gdw="git diff --word-diff"
alias gdf="git diff --name-status"
alias gds="git diff --cached --submodule"
alias gl="git log" 
alias gla="git log --graph --decorate --pretty=oneline --abbrev-commit --all"
alias gls="git log --pretty=format:'%s %C(bold blue)(%an)%Creset' --abbrev-commit"
alias glo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glp="git log -p"
alias glps="git log -p --submodule"
alias glt="git blame"

# set reset commit
alias grc="git checkout --"
alias grH="git reset HEAD"
alias grh="git reset --hard"
alias grm="git revert"

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
alias gcp="git cherry-pick -x"

# set statsh git alias
alias gts="git stash"
alias gtl="git stash list"
alias gta="git stash apply"
alias gtd="git stash drop"
alias gtp="git stash pop"

# set submodule git alias
alias gsa="git submodule add"
alias gsi="git submodule init"
alias gsu="git submodule update"
alias gsp="git submodule update --remote --merge"
alias gsload="git submodule update --init --recursive; git submodule update --recursive"

# set some info git alias
alias gt="git tag"
alias grv="git remote -v"

# set db cli and http tools
alias my="mycli"
alias pg="pgcli"
alias http="http"

# set system info
alias htop="htop"
alias gtop="gtop"
alias glances="glances"

# set search alias
alias sb="bing"
alias sg="google"
alias sh="github"

# set useful tools alias
alias mac="m"
alias cmd="tldr"
alias get="you-get"
alias lzd="lazydocker"
alias ip="curl cip.cc"
alias weather="curl wttr.in"
alias ucache="sync && echo 3 | sudo tee /proc/sys/vm/drop_caches"

# set useful commands alias
alias his="history"
alias mcache="sudo purge"
alias watch="watch -n 3 -c"
alias zd="autoload -U compinit && compinit"
alias installapp="sudo spctl --master-disable"
alias pyenvinit="pip install flake8 yapf autoflake isort neovim jedi ipython requests"
