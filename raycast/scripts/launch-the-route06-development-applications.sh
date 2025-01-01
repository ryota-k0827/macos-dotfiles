#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Launch the ROUTE06 Development Applications
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🧑‍💻

# Documentation:
# @raycast.description ROUTE06の業務アプリケーションを起動します

open "slack://channel?team=TQASP1150&id=C06NPDJD28H"
open -a "Google Chrome" --args --profile-directory="Profile 7"
code ~/work/route06
open "https://www.figma.com/files/1245896537625746604/recents-and-sharing?fuid=1430398541893046857"
open -a "1Password"
defaultbrowser chrome
