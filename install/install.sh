#!/usr/bin/env bash

source ../utils/utils.sh

entry_point_setup

./homebrew.sh
./node.sh
./fan.sh
./net_tools.sh
./ocaml.sh
./emacs.sh
