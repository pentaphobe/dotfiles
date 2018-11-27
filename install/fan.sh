#!/usr/bin/env bash

source ../utils/utils.sh

dry_run_message "installing fan control"

message "installing" "fan control"
brew cask install smcfancontrol

