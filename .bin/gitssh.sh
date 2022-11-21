#!/bin/zsh

ssh-keygen -N '' -f ~/.ssh/id_rsa -t rsa > /dev/null
pbcopy < ~/.ssh/id_rsa.pub > /dev/null
echo "SSH key copied to clipboard. Paste it into GitHub."