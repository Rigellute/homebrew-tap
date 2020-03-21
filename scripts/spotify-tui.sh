#!/bin/sh
VERSION=$1

# check presence of version
if [ -z $VERSION ]; then
	echo "Missing argument with version" >&2
	exit 1
fi 

echo "Preparing release $VERSION"

# check presence of tooling
SHASUM=`which shasum`
CURL=`which curl`
[ -n ${SHASUM} ] && [ -n ${CURL} ] || exit 2

# Check if macOS release exists, if it does then it is likely that the Linux one does too
TARGET="https://github.com/Rigellute/spotify-tui/releases/download/v${VERSION}/spotify-tui-macos.tar.gz"

CHECKVER_CODE=`curl -X HEAD -m 3 -sfw "%{response_code}" ${TARGET}`
if [ $CHECKVER_CODE -ne 302 ]; then
	echo "Version ${VERSION} does not exist" >&2
	exit 3
fi

# The URLs for the respective sha256s
LINUX_SHA_URL="https://github.com/Rigellute/spotify-tui/releases/download/v${VERSION}/spotify-tui-linux.sha256"
MAC_SHA_URL="https://github.com/Rigellute/spotify-tui/releases/download/v${VERSION}/spotify-tui-macos.sha256"

echo "Fetching Linux sha256"
LINUX_SHA=$(curl -sLS "${LINUX_SHA_URL}" | cut -f1 -d\ "")
echo "Fetching macOS sha256"
MAC_SHA=$(curl -sLS "${MAC_SHA_URL}" | cut -f1 -d\ "")

cat > Formula/spotify-tui.rb <<FORMULA  
class SpotifyTui < Formula
  version "v${VERSION}"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "${MAC_SHA}"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "${LINUX_SHA}"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
FORMULA

echo "Successfully updated! Check the code before pushing."
