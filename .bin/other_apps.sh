#!/bin/zsh

function ask_yes_no {
  while true; do
    echo -n "$* [Y/n]: (default: y) "
    read ANS
    case $ANS in
      [Yy]* | "")
        return 0
        ;;
      [Nn]*)
        return 1
        ;;
    esac
  done
}

function app_dl_web {
  if ask_yes_no "Do you want to download $1?"; then
    sleep 1; echo "Download $1"
    sleep 1; open $2
  fi
}

function app_dl_curl {
  DL_PATH="$HOME/Downloads/$(basename $2)"
  if ask_yes_no "Do you want to download $1?"; then
    sleep 1; echo "Download $1"
    sleep 1; curl $2 --output $DL_PATH
    open $DL_PATH
  fi
}

# DisplayLink Manager
app_dl_web "DisplayLink Manager" https://www.synaptics.com/products/displaylink-graphics/downloads/macos

# Logi Options+
app_dl_curl "Logi Options+" https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip