#!/usr/bin/env bash

source ../utils/utils.sh

dry_run_message installing homebrew...

message "installing" "homebrew..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


message "adding" "caskroom..."
brew tap caskroom/cask

message "installing" "regrep..."
brew install rg

message "installing" "tree..."
brew install tree

