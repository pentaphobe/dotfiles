set_hostname() {
  echo Setting hostname $1
  sudo scutil --set HostName $1
  sudo scutil --set LocalHostName "$1.local"
  sudo scutil --set ComputerName $1
}

host=$(read -p "choose a hostname [${HOSTNAME}]: ")
set_hostname $host

