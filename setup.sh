#!/bin/sh
## Install Brew (this will install xcode as well)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

## Set default shell to bash
brew install bash
chsh -s `which bash`
source ~/.bash_profile

## Install fonts
brew install gnupg
### User Input required for decrypting fonts
gpg -d fonts.tar.gz.gpg
tar -xzf fonts.tar.gz
cp fonts/*.otf ~/Library/Fonts/
### Cleanup
rm -f fonts.tar.gz
rm -rf fonts/

## default software that I use
brew install spectacle
brew install bash-completion
brew install docker
brew install docker-compose
brew install nvm

## Install stable nodejs version
nvm install stable

## casks
brew cask install google-chrome
brew cask install hyper
brew cask install slack
brew cask install jetbrains-toolbox
brew cask install spotify
brew cask install insomnia
brew cask install typora
brew cask install figma
brew cask install

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent

cp intelij.plugin.bash ~/.bash_it/plugins/available/

bash-it enable plugin alias-completion base docker docker-compose git node nvm ssh intelij
bash-it enable alias docker docker-compose general git
bash-it enable completion bash-it brew docker docker-compose git npm nvm ssh system

## Stop annoying me Apple
echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> ~/.bash_profile

sudo scutil --set ComputerName "Johannes MacBook Pro"
sudo scutil --set LocalHostName "JK-MBP"

cp .hyper.js ~/.hyper.js

mkdir ~/Projects/
