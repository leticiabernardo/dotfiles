#!/usr/bin/env bash

# Ask for the administrator password
sudo -v

echo "Welcome! Setting up the environment, wait please..."

# Install xcode
if ! command -v xcode-select &> /dev/null
then
    xcode-select --install
fi

# Brew setup
chmod +x $(pwd)/brew/brew.sh && $(pwd)/brew/brew.sh

# Python setup
chmod +x $(pwd)/python/python.sh && $(pwd)/python/python.sh

# Git setup
chmod +x $(pwd)/git/git.sh && $(pwd)/git/git.sh

# OSX preferences setup
chmod +x $(pwd)/osx/osx_preferences.sh && $(pwd)/osx/osx_preferences.sh

# zsh setup
chmod +x $(pwd)/zsh/zsh.sh && $(pwd)/zsh/zsh.sh

# zsh setup
chmod +x $(pwd)/vscode/vscode.sh && $(pwd)/vscode/vscode.sh 

# Install fonts
cp $(pwd)/fonts/*.ttf $HOME/Library/Fonts/

echo "Awesome, allset! 👌🏻"
