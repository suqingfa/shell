#!/usr/bin/env sh

alias du='du -ch'
alias df='df -h'

alias type='type -a'

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lha --color=auto'

alias ..='cd ..'

alias grep='grep --color=auto'

alias ping='ping -c 10'


if $(type pacman &> /dev/null); then
	alias upgrade='sudo pacman -Suy'
fi

if $(type apt-get &> /dev/null); then
	alias upgrade='sudo apt-get update && sudo apt-get upgrade -y'
fi

if $(type brew &> /dev/null); then
	alias upgrade='brew update && brew upgrade'
fi