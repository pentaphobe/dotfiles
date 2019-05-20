#!/usr/bin/env bash

# TODO: install nvm

npm config list

npm set init.author.name "<$DOTFILES_AUTHOR_NAME>"
npm set init.author.email "$DOTFILES_EMAIL"
npm set init.author.url "$DOTFILES_URL"
npm set init.license "MIT"
