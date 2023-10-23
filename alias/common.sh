#!/usr/bin/env sh

alias du='du -ch'
alias df='df -h'

alias type='type -a'

alias hexdump='hexdump --canonical --length=0x200'

alias readelf='readelf --wide'
alias objdump='objdump --wide'

alias grep='grep --color=auto'

alias ping='ping -c 10'

alias last='last --time-format=iso --limit=10'

alias journalctl='journalctl --output=short-iso'

if $(type pacman &> /dev/null); then
	alias upgrade='sudo pacman --sync --sysupgrade --refresh --noconfirm'
	alias install='sudo pacman --sync --sysupgrade'
	alias remove='sudo pacman --remove --recursive --nosave'
	alias purge='pacman --query --unrequired --deps --quiet | sudo pacman --remove --recursive --nosave -'
	alias contents='pacman --query --color auto --list'
	alias contents-owns='pacman --query --color auto --owns'
elif $(type apt-get &> /dev/null); then
	alias upgrade='sudo apt-get update && sudo apt-get upgrade -y'
	alias install='sudo apt-get install'
	alias remove='sudo apt-get remove'
	alias contents='apt-file list'
	alias contents-owns='apt-file find'
elif $(type brew &> /dev/null); then
	alias upgrade='brew update && brew upgrade'
	alias install='brew install'
	alias remove='brew uninstall'
	alias contents='brew list'
fi