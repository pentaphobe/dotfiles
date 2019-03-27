#!/usr/bin/env bash

source ../utils/utils.sh
source ../aliases/aliases.sh

# dry_run_message "setting up colours"

BLACK="a"
RED="b"
GREEN="c"
BROWN="d"
BLUE="e"
MAGENTA="f"
CYAN="g"
GREY="h"
DARK_GREY="A"
BOLD_RED="B"
BOLD_GREEN="C"
YELLOW="D"
BOLD_BLUE="E"
BOLD_MAGENTA="F"
BOLD_CYAN="G"
WHITE="H"
DEFAULT="x"

make_ls_colors() {
  local color_list=(
    # directory
    $BOLD_BLUE  $DEFAULT
    # symbolic link
    $BOLD_CYAN  $DEFAULT
    # socket
    $BOLD_RED   $DEFAULT
    # pipe
    $YELLOW     $DEFAULT
    # executable
    $BOLD_GREEN $DEFAULT
    # block device
    $BOLD_BLUE  $CYAN
    # character device
    $BOLD_BLUE  $BROWN
    # executable with setuid
    $DEFAULT    $RED
    # executable with setguid
    $DEFAULT    $CYAN
    # directory writable by others, with sticky bit
    $DEFAULT    $GREEN
    # directory writable by others, without sticky bit
    $BLACK      $BROWN
  )
  local color_string=$(IFS=""; echo "${color_list[*]}")
  echo "$color_string"
}

#export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export LSCOLORS="$(make_ls_colors)"
