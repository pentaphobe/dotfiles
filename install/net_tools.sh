#!/usr/bin/env bash

source ../utils/utils.sh

dry_run_message "installing net tools"

message "installing" "nmap..."
brew install nmap
message "installing" "ngrep..."
brew install ngrep

