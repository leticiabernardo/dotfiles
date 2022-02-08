# create path to save screenshots
SCREENSHOT_DIR=~/Screenshots
mkdir -p $SCREENSHOT_DIR
defaults write com.apple.screencapture location $SCREENSHOT_DIR

# Disable "natural" scrolling.
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# set minimize effect to scale
defaults write com.apple.dock mineffect -string scale

killall Dock
