#!/usr/bin/env bash

BLACK=0
RED=1
GREEN=2
YELLOW=3
BLUE=4
MAGENTA=5
CYAN=6
WHITE=7

SET_BOLD=$(tput bold)
UNSET_BOLD=$(tput dim)
SET_UL=$(tput smul)
UNSET_UL=$(tput rmul)
SET_REV=$(tput rev)
RESET=$(tput sgr0)
SAVE_CURSOR=$(tput sc)
RESTORE_CURSOR=$(tput rc)
CLEAR_TO_START=$(tput el1)
CLEAR_TO_END=$(tput el)

message() {
  echo "$(tput setaf $WHITE)${SET_BOLD}:$(tput setaf $CYAN): $1 $(tput setaf $BLUE)${@:2}" \
  "${RESET}"
}

is_sourced() {
  if ( [[ "$0" == "${BASH_SOURCE[1]}" ]] ); then
    echo 1
  fi
}

dry_run_message() {
  echo "${CLEAR_TO_END}${CLEAR_TO_START}${RESTORE_CURSOR}"
  if [ -n "$WET_RUN" ]; then
    message "Running " "$@..."
  else
    message "$(tput rev)DRY RUN:$(tput sgr0)" "$@"
    if [ -n "$(is_sourced)" ]; then
      # echo "sourced $0, $_, ${BASH_SOURCE[1]}, $BASH_PROFILE, $SHELL "
      echo "nothing" >> /dev/null
    else
      message quitting solo dry run
      exit -1
    fi
  fi
}

entry_point_setup() {
  echo "${SAVE_CURSOR}"
  if [ -z $DRY_RUN ]; then
    export WET_RUN=1
  fi
}


