#!/usr/bin/env bash

source ../utils/utils.sh

set_hostname() {
  message "Setting hostname $1"
  sudo scutil --set HostName $1
  sudo scutil --set LocalHostName "$1.local"
  sudo scutil --set ComputerName $1
}

install_hostname() {
  host=$(read -p "choose a hostname [${HOSTNAME}]: ")
  set_hostname $host
}

dry_run_message "hostname"
message "setting up hostname..."
install_hostname
