class SpotifyTui < Formula
  version "v0.9.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "1b0027408aa9af4cb024e6f11dbe8f23ec02e536e522f23f8f5313c37b06a26a"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "59a33d3b98a55432a71e7c283991a6a876837c6a0c36e2016474c9a72e9e5269"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
