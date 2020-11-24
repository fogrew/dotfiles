###############################################################################
# Finder                                                                      #
###############################################################################

echo -e "- Finder …"

# Set projects as the default location for new Finder windows
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/projects/"

# Show all hidden Files and Folders
defaults write com.apple.Finder AppleShowAllFiles -bool true

# Show all filename extensions
defaults write com.apple.Finder AppleShowAllExtensions -bool true

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Hide icons for hard drives, servers, and removable media from the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false;
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false;
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true;
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true;

# Finder showX settings
defaults write com.apple.finder ShowRecentTags -bool false
defaults write com.apple.finder ShowSidebar -bool true
defaults write com.apple.finder ShowStatusBar -bool false
defaults write com.apple.finder ShowTabView -bool true
defaults write com.apple.finder ShowPreviewPane -bool false
defaults write com.apple.finder ShowPathbar -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# When performing a search, search the current folder by default
# Search scope
# This Mac       : `SCev`
# Current Folder : `SCcf`
# Previous Scope : `SCsp`
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

killall Finder