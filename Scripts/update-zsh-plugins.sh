#!/bin/bash

sudo mkdir -p /usr/share/zsh/plugins/zsh-syntax-highlighting/
sudo mkdir -p /usr/share/zsh/plugins/zsh-autosuggestions/
git clone https://github.com/zsh-users/zsh-autosuggestions /usr/share/zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /usr/share/zsh/plugins/zsh-syntax-highlighting
