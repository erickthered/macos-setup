# Install Xcode CLI tools
xcode-select --install

# Install OMZ
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install MacOS applications
brew install --cask maccy
brew install --cask alt-tab
brew install --cask keycastr
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask shottr
brew install --cask appcleaner
brew install --cask audacity
brew install docker
brew install --cask krita
brew install ollama
brew install --cask spotify
brew install --cask vlc

# Install CLI applications and CLI dev tools
brew install openjdk@21
brew install neovim
brew install tmux
brew install tcl-tk
brew install nvm
brew install pyenv
brew install ffmpeg
brew install imagemagick

source ~/.zshrc

nvm install lts
pyenv install 3.13

# Install LazyVim
brew install --cask font-jetbrains-mono-nerd-font
brew install fd
brew install lazygit
brew install ripgrep

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

# Copy tmux configuration
cp .tmux.conf $HOME/.tmux.conf
