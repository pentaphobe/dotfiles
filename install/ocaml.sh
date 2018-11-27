#!/usr/bin/env bash

source ../utils/utils.sh


cat << EOF
  $(tput bold)$(tput setaf 3)
  DON'T LET THE INSTALLER APPEND .bash_profile
  $(tput setaf 7)
  The location to update is ~/.dotfiles/home/auto_installed.sh
  $(tput smul)(don't forget to check for duplicates and update the repo!)$(tput rmul)
  $(tput sgr0)
EOF

dry_run_message ocaml installation

message "installing" "ocaml"
# NB: additional lines are added to ../home/auto_installed.sh
brew install ocaml
message "installing" "opam"
brew install opam
