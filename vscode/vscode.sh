# Install code command in PATH (vscode)
if ! command -v code &> /dev/null
then
    ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code
fi

# Install settings sync extensions for vscode
# https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
code --install-extension Shan.code-settings-sync
