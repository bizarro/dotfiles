# Easier Navigation with '..', '...', '....', '.....'.
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts.
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias pj="cd ~/Projects"
alias g="git"
alias h="history"

# Detect which 'ls' flavor is in use.
colorflag="-G"

# List all files colorized in long format.
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dotfiles.
alias la="ls -laF ${colorflag}"

# List only directories.
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Recursively delete `.DS_Store` files.
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update'

# Show/hide files in Finder.
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Lock the screen, when going AFK.
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell.
alias reload="exec $SHELL -l"
