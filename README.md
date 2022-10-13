# dotfiles

&emsp;
## Overview

This repository contains scripts to set macOS.

&emsp;

## Required

- macOS - v12.6

&emsp;

## Install

Download installation materials.

```shell
$ cd ~ && git clone https://github.com/ryota-k0827/dotfiles
```

Set macOS.

```shell
$ cd ~/dotfiles && make
```

Set iterm2.


```
1. Press "command + ," on iterm2.
2. Click "General" tab.
3. Click "Preferences" tab.
4. Turn on "Load preference from a custom folder or URL."
5. Enter "~/dotfiles/iterm/com.googlecode.iterm2.plist".
6. Execute "sudo killall cfprefsd".
```

Set visual studio code.

```
1. Press "shift + command + P" on visual studio code.
2. Search and Click "Command: Install 'code' command in PATH command".
3. Restart visual studio code.
4. Execute "cd dotfiles && ./vscode/sync.sh".
5. If you want to output the current extensions, execute "code --list-extensions > ~/dotfiles/vscode/extensions".
```

Set google chrome.

```
1. Access each URL in "~/dotfiles/chrome/extensions" with Google Chrome.
2. Click "Add Chrome" button.
```

&emsp;

## License

[MIT](LICENSE)