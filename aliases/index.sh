#!/usr/bin/env bash

alias ls='ls -G'

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
