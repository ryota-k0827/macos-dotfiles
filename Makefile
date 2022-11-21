# Do everything.
all: init link defaults brew setup

# Set initial preference.
init:
	@echo -e "\033[0;34mRun init.sh\033[0m"
	.bin/init.sh
	@echo -e "\033[0;34mDone.\033[0m"

# Link dotfiles.
link:
	@echo -e "\033[0;34mRun link.sh\033[0m"
	.bin/link.sh
	@echo -e "\033[0;32mDone.\033[0m"

# Set macOS system preferences.
defaults:
	@echo -e "\033[0;34mRun defaults.sh\033[0m"
	.bin/defaults.sh
	@echo -e "\033[0;32mDone.\033[0m"

# Install macOS applications.
brew:
	@echo -e "\033[0;34mRun brew.sh\033[0m"
	.bin/brew.sh
	@echo -e "\033[0;32mDone.\033[0m"

# Setup tools.
setup:
	@echo -e "\033[0;34mRun setup.sh\033[0m"
	.bin/setup.sh
	@echo -e "\033[0;32mDone.\033[0m"
