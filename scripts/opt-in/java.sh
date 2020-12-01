echo
echo "Installing most recent version of Java"
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk
brew cask install adoptopenjdk11

source ${MY_DIR}/scripts/opt-in/java-tools.sh
