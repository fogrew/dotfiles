
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

local SETTINGS=(
	"macos/naming.sh"
	"macos/general.sh"
	"macos/disable-animations.sh"
	"macos/dock.sh"
	"macos/finder.sh"
	"macos/language.sh"
	"macos/keyboard.sh"
	"macos/mouse.sh"
	"macos/screen.sh"
	"macos/login-screen.sh"
	"macos/menubar.sh"
	"macos/activity-monitor.sh"
	"macos/mail.sh"
	"macos/calendar.sh"
	"macos/chrome.sh"
)

for file ($^SETTINGS(.N)) source $file

echo -e "\n\033[93mGreat, macOS is now configured properly!\033[0m"
