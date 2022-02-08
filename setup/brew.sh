# Install homebrew
echo "Installing Homebrew..."
if test ! $(which brew); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

	brew tap homebrew/bundle
fi

sudo chmod -R 755 /usr/local
sudo chown -R $(whoami):admin /usr/local

# Update homebrew and package
brew update & brew upgrade

# Install all commandlines
echo "Checking and installing command lines with brew..."
while read -r line; do
	echo "Installing $line"
	brew list --versions $line || brew install $line
done < files/apps/commandlines.txt

# Install all applications
echo "Checking and installing applications with brew cask..."
while read -r line; do
	echo "Installing $line"
	brew install --cask $line --quiet
done < files/apps/applications.txt

# Remove outdated versions
brew cleanup
