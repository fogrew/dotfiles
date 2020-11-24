###############################################################################
# Mouse and Trackpad                                                          #
###############################################################################

echo -e "- Mouse and Trackpad …"

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Enable extra multifinger gestures (such as three finger swipe down = app expose)
defaults write com.apple.dock showMissionControlGestureEnabled -bool true
defaults write com.apple.dock showAppExposeGestureEnabled -bool true
defaults write com.apple.dock showDesktopGestureEnabled -bool true
defaults write com.apple.dock showLaunchpadGestureEnabled -bool true

# Set Mouse speed
defaults write NSGlobalDomain com.apple.mouse.scaling -int 2
defaults write NSGlobalDomain com.apple.scrollwheel.scaling -float 0.215
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 0.875

# Set Mouse Springing
defaults write NSGlobalDomain com.apple.springing.enabled -int 1
defaults write NSGlobalDomain com.apple.springing.delay -float 0.25

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Disable smooth scrolling
defaults write -g NSScrollAnimationEnabled -bool NO

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Action on double-clicking window
defaults write -g AppleActionOnDoubleClick -string "Maximize"