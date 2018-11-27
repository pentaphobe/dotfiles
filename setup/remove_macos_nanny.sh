#!/usr/bin/env bash

source ../utils/utils.sh

#
# re-enable system preference to allow running apps from anywhere
#
disable_nanny() {
  message "disabling MacOS nanny state"
  sudo spctl --master-disable
}

enable_nanny() {
  message "enabling MacOS nanny state"
  sudo spctl --master-enable
}

dry_run_message "remove_macos_nanny"

disable_nanny
