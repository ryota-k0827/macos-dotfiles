#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Android Emulator
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

~/Library/Android/sdk/emulator/emulator -avd Pixel_6a_API_33 -no-snapshot -no-boot-anim
