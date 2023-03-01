#!/usr/bin/env sh

alias du='du -ch'
alias df='df -h'

alias type='type -a'

alias readelf='readelf --wide'

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lha --color=auto'

alias ..='cd ..'

alias grep='grep --color=auto'

alias ping='ping -c 10'


if $(type pacman &> /dev/null); then
	alias upgrade='sudo pacman --sync --sysupgrade --refresh --noconfirm'
	alias install='sudo pacman --sync'
	alias remove='sudo pacman --remove --recursive'
	alias contents='pacman --query --list'
fi

if $(type apt-get &> /dev/null); then
	alias upgrade='sudo apt-get update && sudo apt-get upgrade -y'
	alias install='sudo apt-get install'
	alias remove='sudo apt-get remove'
	alias contents='apt-file list'
fi

if $(type brew &> /dev/null); then
	alias upgrade='brew update && brew upgrade'
	alias install='brew install'
	alias remove='brew uninstall'
	alias contents='brew list'
fi