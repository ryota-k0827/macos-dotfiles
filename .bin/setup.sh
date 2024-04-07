#!/bin/zsh

# Volta Setup
echo -e "\033[0;34m- Volta Setup...\033[0m"
volta setup
volta install node@lts
volta install yarn@1.22.19

# Font Setup
## MesloLGS NF
echo -e "\033[0;34m- MesloLGS NF Font Setup...\033[0m"
git clone https://github.com/romkatv/powerlevel10k-media.git
\cp -f powerlevel10k-media/MesloLGS\ NF\ *.ttf ~/Library/Fonts/
rm -rf powerlevel10k-media

fc-cache -vf

# Chromium Setup
echo -e "\033[0;34m- Chromium Setup...\033[0m"
xattr -rc /Applications/Chromium.app
