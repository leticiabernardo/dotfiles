echo "Welcome! Setting up the environment, wait please..."

# installing xcode
if ! command -v xcode-select &> /dev/null
then
    xcode-select --install
fi

# run brew setup
chmod +x $(pwd)/setup/brew.sh
$(pwd)/setup/brew.sh

# setup git
cp files/.gitconfig ~/.gitconfig

chmod +x $(pwd)/setup/git.sh
$(pwd)/setup/git.sh

# setup OS preferences
chmod +x $(pwd)/setup/macos.sh
$(pwd)/setup/macos.sh

# install & setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chmod +x ~/.zshrc
cp -r files/.zshrc ~/.zshrc

# install fonts
cp files/fonts/*.ttf $HOME/Library/Fonts/

# setup vscode
cp files/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
cp files/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json

echo "Awesome, allset! 👌🏻"
