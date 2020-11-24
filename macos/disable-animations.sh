###############################################################################
# Disable animations                                                          #
###############################################################################

echo -e "- Disable animations …"

# Disable Window Animations to Speed shit up a tad
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

# Increase the speed of OS X dialogs boxes
defaults write -g NSWindowResizeTime -float 0.001

# Increase the speed of opening and closing Quick Look windows
defaults write -g QLPanelAnimationDuration -float 0

# Disable the Rubber Band scrolling effect (doesn't affect web views)
defaults write -g NSScrollViewRubberbanding -bool false

# Resizing windows before and after showing the version browser
# also disabled by NSWindowResizeTime -float 0.001
defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false

# Scrolling column views
defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0