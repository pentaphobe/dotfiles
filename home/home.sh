#!/usr/bin/env bash

source ../utils/utils.sh

entry_point_setup

source ./nvm.sh
source ./prompt.sh
source ./auto_installed.sh
source ./colors.sh

export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin"

message setup "all done"
