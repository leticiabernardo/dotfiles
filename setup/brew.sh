# install homebrew
if test ! $(which brew); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# update homebrew and package
brew update & brew upgrade 

# install all packages
brew install git
brew install gcc
brew install python
brew install go
brew install node
brew install npm
brew install yarn
brew install docker
brew install docker-compose
brew install kubernetes-cli
brew install mysql
brew install sqlite
brew install mongodb
brew install postgresql
brew install opencv
brew install tree
brew install wget

# install all apps
brew tap caskroom/cask
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install iterm2
brew cask install spotify
brew cask install discord
brew cask install mysqlworkbench
brew cask install postman
brew cask install pycharm
brew cask install slack
brew cask install evernote

# remove outdated versions
brew cleanup
