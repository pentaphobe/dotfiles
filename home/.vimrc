
syntax on

let _curfile = expand("%:t")
if _curfile =~ ".*\.go" || _curfile =~ "Makefile"
  set noexpandtab
else
  set tabstop=2
  set shiftwidth=2
  set expandtab
endif
