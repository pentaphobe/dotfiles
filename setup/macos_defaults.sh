#!/usr/bin/env bash

source ../utils/utils.sh

dry_run_message "turn off that horrible Chrome swipe navigation"
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool TRUE

