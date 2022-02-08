# install homebrew
echo "Installing Homebrew..."
if test ! $(which brew); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# update homebrew and package
brew update & brew upgrade

# install all commandlines
echo "Checking and installing command lines with brew..."
while read -r line; do
	echo "Installing $line"
	brew list --versions $line || brew install $line
done < files/apps/commandlines.txt

# install all applications
echo "Checking and installing applications with brew cask..."
while read -r line; do
	echo "Installing $line"
	brew install --cask $line --quiet
done < files/apps/applications.txt

# remove outdated versions
brew cleanup
