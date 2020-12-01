#!/usr/bin/env bash

brew cask install iterm2
brew install zsh

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Enable syntax highlighting
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

chmod 755 /usr/local/share/zsh
chomd 755 /usr/local/share/zsh/site-functions

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Plugins

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# Install z
brew install z
echo " Enable the plugin z "

# Powerline fonts
# clone
cd ~ && git clone https://github.com/powerline/fonts.git --depth=1
# install

./fonts/install.sh

# clean-up a bit
rm -rf ~/fonts


# Powerlevel10k fonts
brew install romkatv/powerlevel10k/powerlevel10k




