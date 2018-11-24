#!/usr/bin/env bash

alias ls='ls -G'

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

function setHostname() {
  local name=$1

  sudo scutil --set HostName ${name}
  sudo scutil --set LocalHostName ${name}.local
  sudo scutil --set ComputerName ${name}
}
