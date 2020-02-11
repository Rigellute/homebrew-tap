class SpotifyTui < Formula
  version "v0.14.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "354ee15c5e009feac74f8db6fff95f563c37b8c82c4720e920fcb891b366c184"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "d09eafa69a9f827c36eb04ab0794727f0f769e25151c50e58fbb4b1e5a87337b"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
