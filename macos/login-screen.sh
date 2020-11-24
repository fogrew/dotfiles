###############################################################################
# Login screen                                                                #
###############################################################################

echo -e "- Login screen …"

# Disable audio feedback when volume is changed
defaults write com.apple.sound.beep.feedback -bool false

# Show language menu in the top right corner of the boot screen
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Welcome screen text for guests
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Приходящий - не уходи, уходящий - не радуйся \n\n\n Found me? Shoot a mail to andrew@gurylev.com to return me. Thanks."