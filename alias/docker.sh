#!/usr/bin/env sh

if ! $(type docker &> /dev/null); then
  return 0
fi

alias d='docker'

alias deti='docker exec --tty --interactive'
alias ds='docker stats'

function docker_alias(){
  alias d${1}="docker $2"
  alias d${1}ls="docker $2 ls"
  alias d${1}lsa="docker $2 ls --all"
  alias d${1}rm="docker $2 rm"
  alias d${1}pr="docker $2 prune"

  if [[ $2 = 'container' ]]; then
    alias d${1}st="docker $2 start"
    alias d${1}sp="docker $2 stop"
    alias d${1}l="docker $2 logs"
    alias d${1}lf="docker $2 logs --follow --tail=50"
  fi

  if [[ $2 = 'image' ]]; then
    alias d${1}pl="docker $2 pull"
    alias d${1}ps="docker $2 push"
  fi
}

docker_alias 'c' 'container'
docker_alias 'i' 'image'
docker_alias 'n' 'network'
docker_alias 'v' 'volume'