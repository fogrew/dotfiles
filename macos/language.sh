###############################################################################
# Language                                                                    #
###############################################################################

echo -e "- Language …"

# Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "en-RU" "ru-RU"
defaults write NSGlobalDomain AppleLocale -string "en_RU"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Europe/Moscow" > /dev/null
