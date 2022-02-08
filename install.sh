echo "Welcome! Setting up the environment, wait please..."

# installing xcode
if ! command -v xcode-select &> /dev/null
then
    xcode-select --install
fi

# run brew setup
chmod +x $(pwd)/setup/brew.sh
$(pwd)/setup/brew.sh

# python setup
chmod +x $(pwd)/setup/python.sh
$(pwd)/setup/python.sh

# setup git
cp files/.gitconfig ~/.gitconfig

chmod +x $(pwd)/setup/git.sh
$(pwd)/setup/git.sh

# setup OS preferences
chmod +x $(pwd)/setup/macos.sh
$(pwd)/setup/macos.sh

# install fonts
cp files/fonts/*.ttf $HOME/Library/Fonts/

# install & setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chmod +x ~/.zshrc
cp -r files/.zshrc ~/.zshrc

# install code command in PATH (vscode)
if ! command -v code &> /dev/null
then
    ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code
fi

echo "Awesome, allset! 👌🏻"
