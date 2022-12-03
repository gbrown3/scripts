echo "Installing many common dev dependencies for MacOS"

echo "Installing standard MacOS command line tools..."
xcode-select --install

echo "Installing Homebrew (the gateway to many other installs)..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing SDKMan to manage scala and java versions..."
curl -s "https://get.sdkman.io" | bash

echo "Installing VSCode (general purpose text editor)..."
brew install --cask visual-studio-code

echo "Installing Ammonite (Scala REPL)..."
brew install ammonite-repl

echo "Installing k8s tools..."
brew install kubernetes-cli
brew install kubectx
brew install minikube
brew install --cask lens