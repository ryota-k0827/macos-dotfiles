#!/bin/zsh

# Volta Setup
echo -e "\033[0;34m- Volta Setup...\033[0m"
volta setup
volta install node@lts
volta install yarn@1.22.19
