osascript -e 'tell application "Terminal"' -e 'do script "connect-to-scab -e defaultaccess-rally-dev"' -e 'end tell'
osascript -e 'tell application "Terminal"' -e 'do script "polipo socksParentProxy=localhost:3130"' -e 'end tell'
