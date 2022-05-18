# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/escape/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="af-magic"
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="spaceship"

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
DISABLE_UNTRACKED_FILES_DIRTY="false"

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
plugins=(
  pip
  sudo
  autojump
  jsontools
  web-search
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-completions
  history-substring-search
  colored-man-pages
  python
  poetry
  # git
  # npm
  # vagrant
  # docker
  # docker-compose
  # kubectl
  # helm
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# --------------------------------
# 2. beautiful oh-my-zsh config
# --------------------------------

# set autojump config
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# set autoenv config
# source $(brew --prefix autoenv)/activate.sh

# set nvm config
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# set docker-compose completions
# autoload -Uz compinit && compinit -i
# fpath=(~/.zsh/completion $fpath)

# set k8s autocompletion
# source <(kubectl completion zsh)
# complete -F __start_kubectl k

# set vagrant completions
fpath=(/opt/vagrant/embedded/gems/2.2.14/gems/vagrant-2.2.14/contrib/zsh $fpath)
compinit

# set terminal env
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"

# set globl shadowsocks config
alias runproxy="export export http_proxy=http://127.0.0.1:7890 https_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias disproxy="unset http_proxy https_proxy all_proxy"

# set pyenv home path config
# /usr/local/lib/python3.8/site-packages
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# set pipenv complete
export PIPENV_PYPI_MIRROR=https://mirrors.aliyun.com/pypi/simple/
eval "$(pipenv --completion)"

# set pipx user path
export PATH="$PATH:/Users/escape/.local/bin"

# tailscale
export PATH="$PATH:/Users/escape/go/bin"

# set pipx complete
# autoload -U bashcompinit
# bashcompinit
# eval "$(register-python-argcomplete pipx)"

# set pyenv openssl lib path
# CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl@1.1)" pyenv install 3.7.0
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# set spacevim config
export PATH="$PATH:/Users/escape/Library/Python/2.7/bin"

# set tmuxp config
export DISABLE_AUTO_TITLE="true"
eval "$(_TMUXP_COMPLETE=source_zsh tmuxp)"

# set node18 for hexo
export PATH="/usr/local/opt/node@18/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@18/lib"
export CPPFLAGS="-I/usr/local/opt/node@18/include"

# set thefuck config
eval $(thefuck --alias)

# set gh config
eval "$(gh completion -s zsh)"

# --------------------------------
# 3. open install tools
# --------------------------------

export PATH="$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
export PATH="$PATH:/Users/escape/.poetry/bin"

# --------------------------------
# 5. setting git alias
# --------------------------------

# set git alias
alias g="git"
alias git="LANG=en_US git"
alias gpl="git pull --all"
alias gfe="git fetch --all"
alias gps="git push"

# set git add alias
alias gi="git init"
alias gc="GIT_LFS_SKIP_SMUDGE=1 git clone"
alias gcs="GIT_LFS_SKIP_SMUDGE=1 git clone --recursive"
alias gs="git status"
alias gss="git status -s"
alias ga="git add"
alias gaa="git add --all"

# set git repo alias
alias grm="git rm"
alias grmc="git rm --cached"

# set git commit alias
alias gam="git am"
alias gcm="git commit -m"
alias gcv="git commit -v"
alias gcrc="git commit --amend"
alias gcam="git commit -a -m"

# set git diff alias
alias gd="git diff"
alias gdc="git diff --cached"
alias gds="git diff --staged"
alias gdH="git diff HEAD"
alias gdt="git diff-tree --no-commit-id --name-only -r"
alias gdw="git diff --word-diff"
alias gdf="git diff --name-status"
alias gds="git diff --cached --submodule"
alias gbl="git blame -b -w"
alias gcount="git shortlog -sn"

# set git branch alias
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gbD="git branch -D"
alias gbr="git branch --remote"
alias gco="git checkout"
alias gcb="git checkout -b"

# set git reset alias
alias grc="git checkout --"
alias grH="git reset HEAD"
alias grh="git reset --hard"
alias grs="git reset --soft"
alias grp="git reset --hard HEAD^ && git push origin master -f"
alias grv="git revert"
alias gres="git restore --staged"

# set git merge alias
alias gm="git merge"
alias gmpf="git config pull.rebase false"
alias gmpt="git config pull.rebase true"
alias gmpo="git config pull.ff only"
alias gmnf="git merge --no-ff"
alias gre="git rebase"
alias grei="git rebase -i"
alias gcp="git cherry-pick -x"

# set git log alias
alias gl="git log"
alias glp="git log -p"
alias gls="git log --stat"
alias glsp="git log --stat -p"
alias glps="git log -p --submodule"
alias gldf="git log --"
alias gldfs="git log --stat --"
alias gldfh="git log --full-history --"
alias glda="git log --diff-filter=D --summary"
alias gla="git log --graph --decorate --pretty=oneline --abbrev-commit --all"
alias glo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# set git lfs alias
alias gfs="git lfs"
alias gfse="git lfs env"
alias gfsi="git lfs install"
alias gfsl="git lfs ls-files"
alias gfsa="git lfs track"
alias gfsd="git lfs untrack"
alias gfsm="git lfs migrate"
alias gfss="git lfs status"
alias gfsu="git lfs update"
alias gfsf="git lfs fetch"
alias gfspl="git lfs pull"
alias gfsps="git lfs push"
alias gfspsn="git push --no-verify backup master"

# set git show alias
alias glf="git ls-files"
alias glfs="git ls-files -s"
alias gcf="git cat-file"
alias gcft="git cat-file -t"
alias gcfp="git cat-file -p"
alias gcfs="git cat-file -s"

# set git statsh alias
alias gst="git stash"
alias gsts="git stash save"
alias gsta="git stash apply"
alias gstp="git stash pop"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstc="git stash clear"

# set git worktree alias
alias gwta="git worktree add"
alias gwtl="git worktree list"
alias gwtr="git worktree remove"
alias gwtm="git worktree move"
alias gwtp="git worktree prune"
alias gwtk="git worktree lock"
alias gwtu="git worktree unlock"

# set git submodule alias
alias gsa="git submodule add"
alias gsi="git submodule init"
alias gsu="git submodule update"
alias gsp="git submodule update --remote --merge"
alias gsload="git submodule update --init --recursive; git submodule update --recursive"

# set git tag alias
alias gt="git tag"
alias gta="git tag -a"
alias gts="git tag -s"
alias gtd="git tag -d"
alias gsh="git show"
alias gtv="git tag | sort -V"
alias gtp="git push origin"
alias gtpa="git push origin --tags"

# set git remote alias
alias gru="git remote"
alias gruv="git remote -v"
alias grua="git remote add upstream"

# set git escape alias
alias gcmm="git cz"
alias gcl="git config --list"
alias gpushw="gaa; gcm 'One Fine Day'; gps"

# --------------------------------
# 6. setting pip alias
# --------------------------------

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

# --------------------------------
# 7. setting pyenv alias
# --------------------------------

alias py="pyenv"
alias pyi="pyenv install"
alias pyu="pyenv uninstall"
alias pyl="pyenv local"
alias pys="pyenv versions"
alias pyv="pyenv virtualenv"
alias pym="pyenv migrate"
alias pyup="pyenv update"
alias pyinit="pip install flake8 yapf autoflake isort neovim jedi ipython requests"

# --------------------------------
# 8. setting tmux alias
# --------------------------------

# set tmux alias
alias t="tmux"
alias tml="tmux ls"
alias tms="tmux new -s"
alias tma="tmux a -t"
alias tmk="tmux kill-session -t"
alias tmka="tmux kill-server"

# set tmuxp alias
alias tpa="tmuxp load aws"
alias tpt="tmuxp load test"

# --------------------------------
# 9. setting hexo alias
# --------------------------------

alias hi="hexo init"
alias hn="hexo new"
alias hc="hexo clean"
alias hd="hexo g -d"
alias hs="hexo server"
alias hcs="hexo clean && hexo server"

# --------------------------------
# 10. setting yadm alias
# --------------------------------

alias y="yadm"
alias yi="yadm init"
alias ys="yadm status"
alias ya="yadm add"
alias ycm="yadm commit -m"
alias ypl="yadm pull"
alias yps="yadm push"

# --------------------------------
# 11. setting docker alias
# --------------------------------

# set docker alias
alias docker="sudo k3s crictl"
alias dockerps="sudo k3s crictl ps -a"
alias dockerst="sudo k3s crictl stats"
alias dockerka="sudo k3s crictl ps -a -q | xargs sudo k3s crictl rm -f"

# set kubectl alias
alias k="kubectl"

# set tools alias
alias lzd="lazydocker"
alias zd="autoload -U compinit && compinit"

# --------------------------------
# 12. set docker-compose alias
# --------------------------------

alias dco="docker-compose"
alias dcb="docker-compose build"
alias dce="docker-compose exec"
alias dcps="docker-compose ps"
alias dcrestart="docker-compose restart"
alias dcrm="docker-compose rm"
alias dcr="docker-compose run"
alias dcstop="docker-compose stop"
alias dcup="docker-compose up"
alias dcupb="docker-compose up --build"
alias dcupd="docker-compose up -d"
alias dcdn="docker-compose down"
alias dcl="docker-compose logs"
alias dclf="docker-compose logs -f"
alias dcpull="docker-compose pull"
alias dcstart="docker-compose start"
alias dck="docker-compose kill"

# --------------------------------
# 13. setting database alias
# --------------------------------

# set redis cli alias
alias rd="iredis"

# set mysql cli alias
alias my="mycli"

# set postgres cli alias
alias pg="pgcli"

# --------------------------------
# 14. setting vagrant alias
# --------------------------------

# set vagrant run
alias vg="vagrant"
alias vgi="vagrant init"
alias vgu="vagrant up"
alias vgh="vagrant halt"
alias vgd="vagrant destroy"
alias vgdf="vagrant destroy -f"
alias vgsu="vagrant suspend"
alias vgre="vagrant resume"
alias vgr="vagrant reload"
alias vgrp="vagrant reload --provision"

# set vagrant ssh
alias vgssh="vagrant ssh"
alias vgsshc="vagrant ssh-config"
alias vgrdp="vagrant rdp"

# set vagrant status
alias vgs="vagrant status"
alias vgsg="vagrant global-status"
alias vgre="vagrant resume"
alias vgpr="vagrant provision"

alias vgp="vagrant push"
alias vgsh="vagrant share"

# set vagrant box alias
alias vgbl="vagrant box list"
alias vgba="vagrant box add"
alias vgbr="vagrant box remove"
alias vgbu="vagrant box update"
alias vgbo="vagrant box outdated"

# set vagrant plugin alias
alias vgpl="vagrant plugin list"
alias vgpu="vagrant plugin update"
alias vgpi="vagrant plugin install"
alias vgpd="vagrant plugin uninstall"

# set vagrant snapshot alias
alias vgkl="vagrant snapshot list"
alias vgks="vagrant snapshot save"
alias vgkr="vagrant snapshot restore"
alias vgkd="vagrant snapshot delete"
alias vgki="vagrant snapshot push"
alias vgko="vagrant snapshot pop"

# --------------------------------
# 15. setting system alias
# --------------------------------

# set vim alias
alias vi="nvim"
alias vim="nvim"
alias h="history"
alias hgp="history | grep"
alias hgpi="history | grep -i"
alias rm="rmtrash"
alias watch="watch -n 3 -c"
alias config="vim ~/.zshrc"
alias reload="source ~/.zshrc"

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

# set npm alias
alias npmg="npm i -g"
alias npml="npm list"
alias npml0="npm ls --depth=0"
alias npmi="npm init"
alias npmr="npm run"
alias npms="npm start"
alias npmp="npm publish"
alias npmS="npm i -S"
alias npmD="npm i -D"
alias npmv="npm -v"

# set show info alias
alias cat="bat"
alias find="fd"
alias grep="rg"
alias htop="htop"
alias gtop="gtop"
alias glances="glances"

# set secre alias
alias mcache="sudo purge"
alias ucache="sync && echo 3 | sudo tee /proc/sys/vm/drop_caches"
alias installapp="sudo xattr -r -d com.apple.quarantine"

# set tailscaled alias
alias tailinstall="sudo tailscaled install-system-daemon"
alias tailuninstall="sudo tailscaled uninstall-system-daemon"
alias tailup="sudo tailscale up --hostname=macos"
alias tailstatus="tailscale status"

# --------------------------------
# 16. setting escape alias
# --------------------------------

# set search alias
alias sb="bing"
alias sg="google"
alias sh="github"

# set network alias
alias mtr="mtr"
alias http="http"
alias bench="bench"
alias ip="curl cip.cc"
alias speedn="disproxy; /Users/escape/Fuckcode/Github/DotFiles/tools/speed/speedtest-cn-cli"
alias speedw="runproxy; /Users/escape/Fuckcode/Github/DotFiles/tools/speed/speedtest-cn-cli"

# set tools alias
alias mac="m"
alias cmd="tldr"
alias get="you-get"
alias md2doc="pandoc"
alias weather="curl wttr.in"
alias ppt="npm init slidev@latest"
alias wtf="runproxy; /Users/escape/Fuckcode/Github/DotFiles/tools/wtf/wtf"
alias virtualre="sudo '/Library/Application Support/VirtualBox/LaunchDaemons/VirtualBoxStartup.sh' restart; sudo kextload -b org.virtualbox.kext.VBoxDrv"
