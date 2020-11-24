###############################################################################
# Mail                                                                        #
###############################################################################

echo -e "- Mail …"

# Disable send and reply animations in Mail.app
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# Display emails in threaded mode
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"

# Disable send and reply animations in Mail.app
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Disable automatic spell checking
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

# Disable sound for incoming mail
defaults write com.apple.mail MailSound -string ""

# Disable sound for other mail actions
defaults write com.apple.mail PlayMailSounds -bool false

# Mark all messages as read when opening a conversation
defaults write com.apple.mail ConversationViewMarkAllAsRead -bool true

# Set mark as read delay
defaults write com.apple.Mail MarkAsReadDelay 0

# Disable includings results from trash in search
defaults write com.apple.mail IndexTrash -bool false

# Automatically check for new message (not every 5 minutes)
defaults write com.apple.mail AutoFetch -bool true
defaults write com.apple.mail PollTime -string "-1"

# Show most recent message at the top in conversations
defaults write com.apple.mail ConversationViewSortDescending -bool true

killall Calendar