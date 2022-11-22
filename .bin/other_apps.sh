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

function app_download_web {
  if ask_yes_no "Do you want to download $1?"; then
    sleep 1; echo "Download $1"
    sleep 1; open $2
  fi
}

function app_download_curl {
  DL_DIR="$HOME/Downloads"
  if ask_yes_no "Do you want to download $1?"; then
    sleep 1; echo "Download $1"
    sleep 1; curl $2 --output "$DL_DIR/$3"
    open "$DL_DIR/$3"
  fi
}

# DisplayLink Manager
app_download_web "DisplayLink Manager" https://www.synaptics.com/products/displaylink-graphics/downloads/macos

# Logi Options+
app_download_curl "Logi Options+" https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip logioptionsplus_installer.zip