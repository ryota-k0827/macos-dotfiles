# dotfiles

## Overview

This repository contains scripts to set macOS.

[Reference Sources](https://dev.classmethod.jp/articles/joined-mac-dotfiles-customize/#toc-3)

## Required

```shell
$ sw_vers
ProductName:	macOS
ProductVersion:	12.6
BuildVersion:	21G115
```

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

1. Press `command + ,` on iterm2.
2. Click `General` tab.
3. Click `Preferences` tab.
4. Turn on `Load preference from a custom folder or URL.`
5. Enter `~/dotfiles/iterm/com.googlecode.iterm2.plist`.
6. Execute `sudo killall cfprefsd`.

## License

[MIT](LICENSE)