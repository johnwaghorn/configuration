#!/bin/bash

echo "Ensure you have installed oh my zsh and starship before continuing, cancel with Ctrl+C if you haven't"
sleep 10
echo "Installing Zsh plugins"
cd ~/.oh-my-zsh/custom/plugins || exit
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "Adding plugins to Zsh"
plugins='plugins=(git zsh-autosuggestions zsh-syntax-highlighting)'
sed -i.bak "s/plugins=(git)/$plugins/g" ~/.zshrc

echo "Adding starship to Zsh"
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

echo "Update your Zsh with the following command: source ~/.zshrc"

