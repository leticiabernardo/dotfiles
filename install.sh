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
chmod +x $(pwd)/setup/python.sh
$(pwd)/setup/python.sh

# Git setup
cp files/.gitconfig ~/.gitconfig

chmod +x $(pwd)/setup/git.sh
$(pwd)/setup/git.sh

# MacOS preferences setup
chmod +x $(pwd)/setup/macos.sh
$(pwd)/setup/macos.sh

# Install fonts
cp files/fonts/*.ttf $HOME/Library/Fonts/

# Oh-my-zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chmod +x ~/.zshrc
cp -r files/.zshrc ~/.zshrc

# Install code command in PATH (vscode)
if ! command -v code &> /dev/null
then
    ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code
fi

# Install settings sync extensions for vscode
# https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
code --install-extension Shan.code-settings-sync

echo "Awesome, allset! 👌🏻"
