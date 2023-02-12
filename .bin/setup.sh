#!/bin/zsh

# Volta Setup
echo -e "\033[0;34m- Volta Setup...\033[0m"
volta setup
volta install node@lts
volta install yarn@1.22.19

# Ricty Font Setup
echo -e "\033[0;34m- Ricty Font Setup...\033[0m"
cp -f /opt/homebrew/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# GitHub SSH Setup
echo -e "\033[0;34m- GitHub SSH Setup...\033[0m"
SSH_KEY_PATH="$HOME/.ssh"
ssh-keygen -N '' -f ${SSH_KEY_PATH}/id_rsa
pbcopy < ${SSH_KEY_PATH}/id_rsa.pub
echo "SSH key copied to clipboard. Paste it into GitHub."
sleep 1; echo "Open the GitHub settings page:"
sleep 1; open https://github.com/settings/ssh/new

# Chromium Setup
echo -e "\033[0;34m- Chromium Setup...\033[0m"
xattr -rc /Applications/Chromium.app