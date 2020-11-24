###############################################################################
# Calendar                                                                    #
###############################################################################

echo -e "- Calendar …"

# Week starts on monday
defaults write com.apple.iCal "first day of week" -int 1

# Hide birthdays
defaults write com.apple.iCal "display birthdays calendar" -int 0

# Hide holydays
defaults write com.apple.iCal "add holiday calendar" -int 0

# Hide birthdays
defaults write com.apple.iCal "last calendar view description" -string "7-day"

# Set base position of scroll on day view to 8:00
defaults write com.apple.iCal "first shown minute of day" -string "470.5047748976808"

killall iCal
killall Calendar