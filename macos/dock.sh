###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

echo -e "- Dock, Dashboard, and hot corners …"

# Enable highlight hover effect for the grid view of a stack (Dock)
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
#defaults write com.apple.dock persistent-apps -array

# Group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
# expose-group-by-app is old name of prop!
defaults write com.apple.dock expose-group-apps -bool false

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Disable animation of showing and hiding Mission Control, command+numbers
defaults write com.apple.dock expose-animation-duration -float 0

# Disable animation of showing and hiding Launchpad
defaults write com.apple.dock springboard-show-duration -float 0
defaults write com.apple.dock springboard-hide-duration -float 0

# Changing pages in Launchpad
defaults write com.apple.dock springboard-page-duration -float 0

# Start Screen Saver on leave cursor to top left or right corner
# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen
# Top left screen corner → Start screen saver
# #security
defaults write com.apple.dock wvous-tl-corner -int 5
defaults write com.apple.dock wvous-tl-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 5
defaults write com.apple.dock wvous-tr-modifier -int 0

# brew install dockutil
# dockutil --no-restart --remove all
# dockutil --no-restart --add "/Applications/Google Chrome.app"
# dockutil --no-restart --add "/Applications/Firefox.app"
# dockutil --no-restart --add "/Applications/Mail.app"
# dockutil --no-restart --add "/Applications/Calendar.app"
# dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
# dockutil --no-restart --add "/Applications/System Preferences.app"

killall Dock