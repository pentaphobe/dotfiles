#!/usr/bin/env bash

source ../utils/utils.sh

##
#
# This file is just stuff that gets auto-added by installers
#
##

dry_run_message "setting" "ocaml and opam environment"
#
# ocaml (and opam)
#
# opam configuration
test -r /Users/kjo/.opam/opam-init/init.sh && . /Users/kjo/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
