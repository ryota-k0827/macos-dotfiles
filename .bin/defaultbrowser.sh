#!/bin/zsh

# Clone defaultbrowser to the home directory
git clone https://github.com/kryota-dev/defaultbrowser.git "$HOME/defaultbrowser"

# Install defaultbrowser
make -C "$HOME/defaultbrowser"
sudo make -C "$HOME/defaultbrowser" install
