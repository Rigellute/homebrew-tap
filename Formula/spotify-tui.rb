class SpotifyTui < Formula
  version 'v0.4.0'
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-#{version}.tar.gz"
    sha256 "ce32cbd348d1cb7e7300e7f88d3101cebee4ebb77ac968e0df825b97239bf1ea"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
