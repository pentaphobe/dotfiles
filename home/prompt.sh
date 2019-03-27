#!/usr/bin/env bash

source ../utils/utils.sh
source ../aliases/aliases.sh

dry_run_message "setting up custom prompt"

# Work in progress

PS_USER="\[$(tput bold)\]\[$(tput setaf 6)\]\[$(tput setaf 3)\]\u"
PS_AT="\[$(tput setaf 1)\]@"
PS_DOLLAR="\[$(tput setaf 4)\]\\$ "
PS_RESET="\[$(tput sgr0)\]"

exit_code() {
  exit_code=$?
  [[ $exit_code -eq 0 ]] || printf "\[$(tput setaf 1)\] $exit_code ${PS_RESET} "
}

set_prompt() {
  NICEPATH="\[$(tput setaf 3)$(tput setaf 6)$(nicePath "\w")\]"
  EXIT_CODE="$(exit_code)"
}

##
## Currently not working properly, either expands and loses cursor (with double
## quotes), or doesn't expand properly (with single quotes)
##
##
# OLD_PROMPT_COMMAND="${PROMPT_COMMAND}"
# PROMPT_COMMAND="${PROMPT_COMMAND:+"$PROMPT_COMMAND; "};set_prompt"
# set_prompt
# export PS1='${EXIT_CODE}'"${PS_USER}${PS_AT}${NICEPATH}${PS_DOLLAR}${PS_RESET}"

# temporary version for now (doesn't calculate length properly)
make_nice_path() {
  export NICE_PATH="$(nicePath "$(pwd)")"
}

PROMPT_COMMAND="${PROMPT_COMMAND:+"$PROMPT_COMMAND; "}make_nice_path"
export PS1='\[$(tput bold)\]\[$(tput setaf 6)\]\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\[$(tput setaf 6)\]${NICE_PATH}\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]'
