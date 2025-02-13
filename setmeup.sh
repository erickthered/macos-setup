# Install Xcode CLI tools
xcode-select --install

# Install OMZ
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install MacOS applications
brew install --cask google-chrome
brew install --cask microsoft-edge
brew install --cask firefox@developer-edition
brew install --cask rectangle
brew install --cask maccy
brew install --cask alt-tab
brew install --cask keycastr
brew install --cask iterm2
brew install --cask ghostty
brew install --cask visual-studio-code
brew install --cask shottr
brew install --cask appcleaner
brew install --cask audacity
brew install docker
brew install --cask krita
brew install ollama
brew install --cask spotify
brew install --cask vlc
brew install handbrake

# Install CLI applications and CLI dev tools
brew install openjdk@21
brew install neovim
brew install tmux
brew install nvm
brew install pyenv
brew install ffmpeg
brew install imagemagick
brew install python-tk python

source ~/.zshrc

nvm install lts
pyenv install 3.13

# Install LazyVim
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-dejavu-sans-mono-nerd-font
brew install --cask font-arimo-nerd-font
brew install fd
brew install lazygit
brew install ripgrep
brew install fzf

## Backup nvim configuration
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Configure vscode
mkdir -p $HOME/Library/Application\ Support/Code/User
cp ./vscode/settings.json $HOME/Library/Application\ Support/Code/User
cp ./vscode/keybindings.json $HOME/Library/Application\ Support/Code/User

## Install vscode extension
code --install-extension ms-python.python
code --install-extension ms-python.black-formatter
code --install-extension eamodio.gitlens
code --install-extension ms-vscode.live-server
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension ms-toolsai.jupyter
code --install-extension rangav.vscode-thunder-client
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension Continue.continue

# Copy tmux configuration
cp .tmux.conf $HOME/.tmux.conf
