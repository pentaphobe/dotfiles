#!/usr/bin/env bash

# stolen from https://www.emacswiki.org/emacs/EmacsForMacOS#toc14

brew install --with-cocoa --srgb emacs
# ln -Fs $(find /usr/local -name "Emacs.app") /Applications/Emacs.app
osascript -e "tell application \"Finder\" to make alias file to (POSIX fie \"$(find /usr/local -name "Emacs.app")\") at POSIX file \"$HOME/Applications\""
