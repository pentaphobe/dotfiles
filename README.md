# Dotfiles repository

Reinventing the wheel for fun and nonprofit

## Usage

1. clone repository
2. run `install_home.sh` **(NB: NOT WORKING YET)**
3. ??
4. profit

## About

Entrypoints of each dir are the name of the dir, a questionable choice - but one I'm living with for now

```
├── home           files symlinked to user's home dir
│   │              or supporting scripts for same
│   ├── .bashrc
│   ├── prompt.sh
│   ├── colors.sh
│   ├── README.md
│   ├── .vimrc
│   ├── home.sh
│   ├── auto_installed.sh
│   ├── nvm.sh
│   ├── .bash_profile
│   └── .gitconfig
├── install       performs installation of common tools
│   │             only run on first use
│   ├── emacs.sh
│   ├── install.sh
│   ├── net_tools.sh
│   ├── fan.sh
│   ├── ocaml.sh
│   └── homebrew.sh
├── setup         configuration overrides of system defaults
│   │             and other single-run setup
│   ├── setup.sh
│   ├── remove_macos_nanny.sh
│   ├── hostname.sh
│   └── README.md
├── utils
│   │             utility scripts used by dotfiles
│   └── utils.sh
├── README.md
├── .gitignore
├── install_home.sh
└── aliases       a set of common aliases (added when starting
    │             a new shell session
    ├── aliases.sh
    └── README.md
```
