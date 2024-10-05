# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
#

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# some ls aliases
alias vim="nvim"
alias ls='exa -hl --no-user --git --git-ignore'
alias la='exa -hla --no-user --git'
alias lt='exa -hlT --no-user --git --git-ignore'

# nvim
export PATH="$PATH:/opt/nvim-linux64/bin" 

# Add rust to path
. $HOME/.cargo/env

# Add rtx to path
eval "$(/home/grepvenancio/.cargo/bin/rtx activate bash)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# dotnet
export PATH=$HOME/.dotnet/:$PATH
. "$HOME/.cargo/env"

#go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/go/bin

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init bash)"

#ocaml
. ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

[ -f "/home/grepvenancio/.ghcup/env" ] && . "/home/grepvenancio/.ghcup/env" # ghcup-env

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
