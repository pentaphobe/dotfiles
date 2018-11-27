#!/usr/bin/env bash

source ../utils/utils.sh
source ../aliases/aliases.sh

dry_run_message "setting up custom prompt"

# Work in progress
export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\[$(tput setaf 6)\]\[$(nicePath "\w")\]\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"

