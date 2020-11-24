###############################################################################
# Screen                                                                      #
###############################################################################

echo -e "- Screen …"

# Require password immediately after sleep or screen saver begins
# #security
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Set screensaver to flurry, start after 5 minutes
defaults -currentHost write com.apple.screensaver moduleDict -dict path -string "/System/Library/Screen Savers/Flurry.saver" moduleName -string "Flurry" type -int 0
defaults -currentHost write com.apple.screensaver idleTime -int 300

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Enable subpixel font rendering on non-Apple LCDs
# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
defaults write NSGlobalDomain AppleFontSmoothing -int 1

# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true