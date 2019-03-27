#!/usr/bin/env bash

# enable colours and type suffixes
alias ls='ls -GF'

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

function setHostname() {
  local name=$1

  sudo scutil --set HostName ${name}
  sudo scutil --set LocalHostName ${name}.local
  sudo scutil --set ComputerName ${name}
}

MAX_PATH_LEN=20

function fixHome() {
 echo $(sed -e "s|${HOME}|~|g" <<< "${1}")
}

function nicePath() {
  local foo=$(fixHome $1)  
  local len=${#foo}
  local parts
  if [ $len -ge $MAX_PATH_LEN ]; then
    IFS='/' read -r -a parts <<< "$foo"
    local partsLen=${#parts[@]}
    echo "${parts[0]}/.../${parts[$partsLen-2]}/${parts[$partsLen-1]}"    
  else
    echo $foo
  fi
} 
