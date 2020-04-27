echo "Welcome! Setting up the environment, wait please..."

# run brew setup
chmod +x ./setup/brew.sh
./setup/brew.sh

# setup git
cp files/.gitconfig ~/.gitconfig

chmod +x ./setup/git.sh
./setup/git.sh

# install & setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp files/.zshrc ~/.zshrc

# install fonts
cp files/fonts/*.ttf $HOME/Library/Fonts/

# setup vscode
cp files/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
cp files/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json

echo "Awesome, allset! 👌🏻"