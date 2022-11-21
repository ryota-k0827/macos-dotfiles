#!/bin/zsh

# Volta Setup
volta setup > /dev/null

# SSH Key Setup
SSH_KEY_PATH="$HOME/.ssh/id_rsa_test"
ssh-keygen -N '' -f $SSH_KEY_PATH > /dev/null
pbcopy < $SSH_KEY_PATH > /dev/null
echo "SSH key copied to clipboard. Paste it into GitHub."
sleep 3; echo "Open the GitHub settings page:"
sleep 3; open https://github.com/settings/ssh/new