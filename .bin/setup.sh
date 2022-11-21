#!/bin/zsh

# Volta Setup
volta setup

# SSH Key Setup
SSH_KEY_PATH="$HOME/.ssh"
ssh-keygen -N '' -f ${SSH_KEY_PATH}/id_rsa
pbcopy < ${SSH_KEY_PATH}/id_rsa.pub
echo "SSH key copied to clipboard. Paste it into GitHub."
sleep 3; echo "Open the GitHub settings page:"
sleep 3; open https://github.com/settings/ssh/new