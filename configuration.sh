# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



## UI.

# Show scrollbars only when scroll.
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Use Graphite Highlight Color.
defaults write NSGlobalDomain AppleHighlightColor -string "0.780400 0.815700 0.858800"



## Keyboard

# Disable press-and-hold for keys in favor of key repeat.
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate.
defaults write NSGlobalDomain KeyRepeat -int 0

# Enable full keyboard access for all controls.
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3



## Finder.

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use list view in all Finder windows by default.
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show status bar.
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar.
defaults write com.apple.finder ShowPathbar -bool true

# When performing a search, search the current folder by default.
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"



## Dock.

# Set the icon size of Dock items to 36 pixels.
defaults write com.apple.dock tilesize -int 36

# Show indicator lights for open applications in the Dock.
defaults write com.apple.dock show-process-indicators -bool true

# Minimize windows into their application’s icon.
defaults write com.apple.dock minimize-to-application -bool true

# Don’t automatically rearrange Spaces based on most recent use.
defaults write com.apple.dock mru-spaces -bool false

# Don’t show it as a Space.
defaults write com.apple.dock dashboard-in-overlay -bool true



## Mission Control.

# Don’t group windows by application in Mission Control.
defaults write com.apple.dock expose-group-by-app -bool false



## Dashboard.

# Disable it.
defaults write com.apple.dashboard mcx-disabled -bool true



## Hot Corners.

# Top left screen corner → Mission Control.
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner → Desktop.
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom left screen corner → Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0



## Terminal.

# Only use UTF-8 in Terminal.app.
defaults write com.apple.terminal StringEncodings -array 4



## Kill affected applications
for app in "Activity Monitor" "cfprefsd" "Dock" "Finder" "SystemUIServer" "Terminal"; do
	killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
