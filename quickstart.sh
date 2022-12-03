echo "Welcome to Gabe's quickstart script!"
echo "Usage: sh ./quickstart.sh [GIT_EMAIL]"

GIT_EMAIL=$1

if [-z $GIT_EMAIL]; then
    echo "Must provide an email for git to use with commits."
    exit 1
fi

echo "Installing many common dev dependencies for MacOS"

echo "Installing standard MacOS command line tools..."
xcode-select --install

echo "Installing Homebrew (the gateway to many other installs)..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing SDKMan to manage scala and java versions..."
curl -s "https://get.sdkman.io" | bash

echo "Installing VSCode (general purpose text editor)..."
brew install --cask visual-studio-code

echo "Installing IntelliJ (great IDE for Scala and Java)..."
brew install --cask intellij-idea-ce

echo "Installing Ammonite (Scala REPL)..."
brew install ammonite-repl

echo "Installing k8s tools..."
brew install kubernetes-cli
brew install kubectx
brew install minikube
brew install --cask lens

echo "Setting up some standard configs..."
echo "Updating ~/.gitconfig"
cat ./git_config.txt > ~/.gitconfig