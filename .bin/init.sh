#!/bin/zsh

# Check operating system
if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# Install Rosetta 2 for Apple Silicon
if [ "$(uname -m)" = "arm64" ] ; then
  /usr/sbin/softwareupdate --install-rosetta --agree-to-license
fi

# Install xcode
xcode-select --install

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [ "$(uname -m)" = "arm64" ] ; then
  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/${USER}/.zprofile > /dev/null
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/${USER}/.zprofile > /dev/null
  eval "$(/opt/homebrew/bin/brew shellenv)" > /dev/null
fi
