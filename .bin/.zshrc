# ========== zsh config ==========
setopt auto_pushd
setopt pushd_ignore_dups
# setopt auto_cd
setopt hist_ignore_dups
setopt share_history
setopt inc_append_history
export HISTSIZE=100000
export SAVEHIST=100000
# =============================

# ========== User specific aliases and functions ==========
alias ll='ls -lF'
alias la='ls -lAF'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias relogin='exec $SHELL -l'

# alias rm='rm -i'
alias rmtrash='rm -rf ${HOME}/.Trash/* && rm -rf ${HOME}/.Trash/.*'
alias rmdownloads='rm -rf ${HOME}/Downloads/* && rm -rf ${HOME}/Downloads/.*'
alias rmnm='rm -rf ./node_modules'

alias delds='find . -name ".DS_Store" -type f -ls -delete'

alias g='git'
alias gb='git branch'
alias gs='git status'
function gcl (){
  local URL=$1
  git clone "${URL}"
}
function gch (){
  local BRANCH=${1:-main}
  git checkout "${BRANCH}"
}
function gcb (){
  local BRANCH=$1
  git checkout -b "${BRANCH}"
}
function ga (){
  local FILE=${1:-.}
  git add "${FILE}"
}
function gc (){
  local MESSAGE=${1:-minor adjustment}
  git commit -m "${MESSAGE}"
}
alias gca='git commit --amend'
alias gf='git fetch'
function gr(){
  local BRANCH=${1:-main}
  git rebase "${BRANCH}"
}
alias gpl='git pull origin HEAD'
alias gps='git push origin HEAD'
alias gac='git reset HEAD .'
alias gcc='git reset --hard HEAD~'
function gss (){
  local MESSAGE=$1
  git stash save "${MESSAGE}"
}
alias gsl='git stash list'
function gsa (){
  local STASH_NAME=$1
  git stash apply "${STASH_NAME}"
}
function gsd (){
  local STASH_NAME=$1
  git stash drop "${STASH_NAME}"
}

# function gi (){
# local QUERY=$1
# curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/${QUERY} >> .gitignore
# }
# alias gil='curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/list'
# alias gihelp='echo "gitignore.io help:\n - gil: lists the operating systems, programming languages and IDE input types\n - gi <types>: creates .gitignore files for types of operating systems, programming languages or IDEs"'

alias d='docker'
alias db='docker build .'
alias dil='docker image ls'
alias dcl='docker container ls -a'
function dce (){
  local CONTAINER=$1
  docker container exec -it ${CONTAINER} bash
}
alias dip='docker image prune'
alias dcp='docker container prune'
alias dsp='docker system prune --volumes'
alias dcu='docker compose up'
alias dcud='docker compose up -d'
alias dcd='docker compose down'

# alias v='volta'
# alias vin='volta install'
# function vrm (){
# local PACKAGE_DIR=$1
# rm -rf ~/.volta/tools/image/${PACKAGE_DIR}
# }
# alias vp='volta pin'

alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"

# alias n='node'
# alias nv='node -v'

# alias y='yarn'
# alias yv='yarn -v'
# alias yi='yarn install'
# alias yd='yarn dev'
# alias yb='yarn build'
# alias ys='yarn start'
# alias yl='yarn lint'
# alias yf='yarn format'
# alias yt='yarn test'
# alias ya='yarn add'
# alias yad='yarn add -D'
# alias yag='yarn global add'
# alias yrm='yarn remove'
# alias yrmg='yarn remove -g'

alias c='code'
# alias cle='code --list-extensions'
alias -g C='| pbcopy'

# alias b='brew'
# alias bi='brew install'
# alias bs='brew search'
# alias bd='brew update'
# alias bg='brew upgrade'
# alias bo='brew outdated'
# alias bl='brew list'
# alias bd='brew doctor'

alias alhelp='cat ${HOME}/.zshrc'
# ===============================================

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f "$HOME/.p10k.zsh" ]] || source "$HOME/.p10k.zsh"
autoload -Uz promptinit
promptinit
prompt powerlevel10k

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Volta environment setup
export VOLTA_FEATURE_PNPM=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Run neofetch at startup
neofetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
