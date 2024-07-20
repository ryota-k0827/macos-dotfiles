# Do everything.
all: init link defaults brew prezto setup other_apps

# Set initial preference.
init:
	@echo "\033[0;34mRun init.sh\033[0m"
	@.bin/init.sh
	@echo "\033[0;34mDone.\033[0m"

# Link dotfiles.
link:
	@echo "\033[0;34mRun link.sh\033[0m"
	@.bin/link.sh
	@echo "\033[0;32mDone.\033[0m"

# Set macOS system preferences.
defaults:
	@echo "\033[0;34mRun defaults.sh\033[0m"
	@.bin/defaults.sh
	@echo "\033[0;32mDone.\033[0m"

# Install macOS applications.
brew:
	@echo "\033[0;34mRun brew.sh\033[0m"
	@.bin/brew.sh
	@echo "\033[0;32mDone.\033[0m"

# Install Prezto
prezto:
	@echo "\033[0;34mRun prezto.sh\033[0m"
	@.bin/prezto.sh
	@echo "\033[0;32mDone.\033[0m"

# Setup tools.
setup:
	@echo "\033[0;34mRun setup.sh\033[0m"
	@.bin/setup.sh
	@echo "\033[0;32mDone.\033[0m"

# Setup defaultbrowser
defaultbrowser:
	@echo "\033[0;34mRun defaultbrowser.sh\033[0m"
	@.bin/defaultbrowser.sh
	@echo "\033[0;32mDone.\033[0m"
	@echo "Here are the steps to add a script directory to Raycast:"
	@echo "1. Open Raycast settings"
	@echo "2. Switch to the Extensions tab"
	@echo "3. Click the + button and select \"Add Script Directory”"
	@echo "4. Add \"~/dotfiles/raycast/scripts\""

# Setup Other apps
other_apps:
	@echo "\033[0;34mRun other_apps.sh\033[0m"
	@.bin/other_apps.sh
	@echo "\033[0;32mDone.\033[0m"