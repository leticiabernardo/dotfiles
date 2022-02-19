#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

echo "Welcome! Setting up the environment, wait please..."

# Install xcode
if ! command -v xcode-select &> /dev/null
then
    xcode-select --install
fi

# Brew setup
chmod +x $(pwd)/setup/brew.sh
$(pwd)/setup/brew.sh

# Python setup
chmod +x $(pwd)/python/python.sh && $(pwd)/python/python.sh

# Git setup
chmod +x $(pwd)/git/git.sh && $(pwd)/git/git.sh

# OSX preferences setup
chmod +x $(pwd)/osx/osx_preferences.sh && $(pwd)/osx/osx_preferences.sh

# zsh setup
chmod +x $(pwd)/zsh/zsh.sh && $(pwd)/zsh/zsh.sh

# Install fonts
cp files/fonts/*.ttf $HOME/Library/Fonts/

# Install code command in PATH (vscode)
if ! command -v code &> /dev/null
then
    ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code
fi

# Install settings sync extensions for vscode
# https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
code --install-extension Shan.code-settings-sync

echo "Awesome, allset! 👌🏻"
