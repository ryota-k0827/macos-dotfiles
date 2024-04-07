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

## UDEV Gothic
echo -e "\033[0;34m- UDEV Gothic Font Setup...\033[0m"
UDEV_GOTHIC_VERSION=1.3.1
curl -L -O https://github.com/yuru7/udev-gothic/releases/download/v${UDEV_GOTHIC_VERSION}/UDEVGothic_v${UDEV_GOTHIC_VERSION}.zip
unzip UDEVGothic_v${UDEV_GOTHIC_VERSION}.zip
\cp -f UDEVGothic_v${UDEV_GOTHIC_VERSION}/*.ttf ~/Library/Fonts/
rm -rf UDEVGothic_v${UDEV_GOTHIC_VERSION}.zip UDEVGothic_v${UDEV_GOTHIC_VERSION}

# Chromium Setup
echo -e "\033[0;34m- Chromium Setup...\033[0m"
xattr -rc /Applications/Chromium.app
