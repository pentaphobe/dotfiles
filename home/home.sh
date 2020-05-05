#!/usr/bin/env bash

source ../utils/utils.sh

entry_point_setup

source ./nvm.sh
source ./prompt.sh
source ./auto_installed.sh
source ./colors.sh
source ./qt.sh

## GO
export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin"

## JAVA / JENV
export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"

message setup "all done"
