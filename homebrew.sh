# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install programs.
brew install node
brew install git

brew install brew-cask

brew cask install atom
brew cask install chromium
brew cask install google-chrome
brew cask install slack
brew cask install transmission
brew cask install blender
brew cask install filezilla
brew cask install nylas-n1
brew cask install teamviewer
brew cask install vlc
brew cask install brackets
brew cask install firefox
brew cask install processing
brew cask install the-unarchiver

# Remove outdated versions from the cellar.
brew cleanup
