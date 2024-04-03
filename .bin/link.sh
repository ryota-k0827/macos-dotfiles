#!/bin/zsh

# This script creates symbolic links in the home directory for all dotfiles (except .git, .github, and .DS_Store) in the script's directory, and then sources the .zprofile to apply the changes.
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for dotfile in "${SCRIPT_DIR}"/.??* ; do
  [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
  [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
  [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue

  ln -fnsv "$dotfile" "$HOME"
done

source ~/.zprofile


# This script creates symbolic links in the user's Library/LaunchAgents directory for all files starting with 'com.' in the script's Library/LaunchAgents directory, and then loads each Launch Agent script using 'launchctl load'.
if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

for file in "${SCRIPT_DIR}/Library/LaunchAgents"/com.* ; do
  ln -fnsv "$file" "$HOME/Library/LaunchAgents"

  filename=$(basename -- "$file")
  launchctl load "$HOME/Library/LaunchAgents/$filename"
done

