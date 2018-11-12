#!/usr/bin/env bash

echo THIS ISNT READY YET
exit -1

is_real_file() {
  return $(stat -f "%Y" $1)
}

# (source, target)
link_files() {
}

if [[ is_real_file(.bash_profile) ]]; then
  echo "real file"
fi
