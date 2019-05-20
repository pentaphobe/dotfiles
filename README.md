# Dotfiles repository

Reinventing the wheel for fun and nonprofit

Since purchasing a new laptop last year and losing the work device I'd been using as my primary driver for 5 years, I've had to dive into the world of setting up a new machine.

This repo is a very un-fancy attempt at a clean-slate setup to my personal preferences, but is growing very slowly, partially because I again have a work machine stealing my time and partially because I'm attempting to avoid filling the new machine up with random tools I only use once.

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
