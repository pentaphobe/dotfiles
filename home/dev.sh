#!/usr/bin/env bash

source ../utils/utils.sh

message dev "
dev <language>    - activate environment
dev list          - show environments
"

### Dev environment helpers
#

function dev_list() {
  message "Available languages"
  ls ${DIR}/dev | sed -E 's~\.sh~~' | sed -E 's~^~   ~'
}

function dev() {
  local lang="$1"
  if [[ $lang == "list" ]];then 
    dev_list
    return
  fi
  local dev_dir="${DIR}/dev"
  local filename="${dev_dir}/${lang}.sh"
  if [ ! -f "$filename" ];then
    message "No language loader for '$lang' in ${dev_dir}"
    false
    return
  fi
  message "setting dev environment for" "${lang}..."
  source "$filename"
}