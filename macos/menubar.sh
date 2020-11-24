###############################################################################
# Menubar                                                                     #
###############################################################################

echo -e "- Menubar …"

# Showing a toolbar or menu bar in full screen
defaults write -g NSToolbarFullScreenAnimationDuration -float 0

# Show battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

# Clock indicator : will flash on and off each second
defaults write com.apple.menuextra.clock FlashDateSeparators -bool true

# Set menubar digital clock format
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM HH:mm:ss"

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

killall SystemUIServer