#!/bin/zsh

# Check operating system
if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

echo "Open the App Store."
sleep 1; echo "Please login with your Apple ID"
sleep 3; open -a App\ Store

function ask_yes_no {
  while true; do
    echo -n "$* [Y/*]: "
    read ANS
    case $ANS in
      [Yy]*)
        return 0
        ;;
      *)
        echo "Please login with your Apple ID"
        ;;
    esac
  done
}

if ask_yes_no "Did you login?"; then
  brew bundle --global
fi