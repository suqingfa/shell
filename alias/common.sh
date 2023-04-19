#!/usr/bin/env sh

alias du='du -ch'
alias df='df -h'

alias type='type -a'

alias hexdump='hexdump --canonical --length=0x200'

alias readelf='readelf --wide'
alias objdump='objdump --wide'

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lha --color=auto'

alias ..='cd ..'

alias grep='grep --color=auto'

alias ping='ping -c 10'

if $(type yay &> /dev/null); then
	alias upgrade='yay --sync --sysupgrade --refresh --noconfirm'
	alias install='yay --sync --sysupgrade'
	alias remove='yay --remove --recursive'
	alias contents='yay --query --list'
elif $(type pacman &> /dev/null); then
	alias upgrade='sudo pacman --sync --sysupgrade --refresh --noconfirm'
	alias install='sudo pacman --sync --sysupgrade'
	alias remove='sudo pacman --remove --recursive'
	alias contents='pacman --query --list'
elif $(type apt-get &> /dev/null); then
	alias upgrade='sudo apt-get update && sudo apt-get upgrade -y'
	alias install='sudo apt-get install'
	alias remove='sudo apt-get remove'
	alias contents='apt-file list'
elif $(type brew &> /dev/null); then
	alias upgrade='brew update && brew upgrade'
	alias install='brew install'
	alias remove='brew uninstall'
	alias contents='brew list'
fi