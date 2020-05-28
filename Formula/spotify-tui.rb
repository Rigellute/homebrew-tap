class SpotifyTui < Formula
  version "v0.20.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "7733455a5858c1d0a7e2a18e514184ac70ce12eabb10f2c62fa5fc5e7a05499d"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "aa9b3b589c3fabfb6521732a67fcfb04797ab1c0fd715543605cbd972e255cfb"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
