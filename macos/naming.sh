###############################################################################
# NAMING THINGS                                                               #
###############################################################################

echo -e "- Naming things …"

# computername="0x$(hexdump -n 4 -e '1/4 "%01X"' /dev/random)"
computername="$(hostname)"
echo -e "\n  What should your computer be named? (default: $computername)"
echo -ne "  > \033[34m\a"
read
echo -e "\033[0m\033[1A"
[ -n "$REPLY" ] && computername=$REPLY

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName $computername
sudo scutil --set HostName $computername
sudo scutil --set LocalHostName $computername
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $computername

# Apple ID
if [ -n "$(defaults read NSGlobalDomain AppleID 2>&1 | grep -E "( does not exist)$")" ]; then
	AppleID=""
else
	AppleID="$(defaults read NSGlobalDomain AppleID)"
fi;
echo -e "\n  What's your Apple ID? (default: $AppleID)"
echo -ne "  > \033[34m\a"
read
echo -e "\033[0m\033[1A\n"
[ -n "$REPLY" ] && AppleID=$REPLY

# Set AppleID
defaults write NSGlobalDomain AppleID -string $AppleID
