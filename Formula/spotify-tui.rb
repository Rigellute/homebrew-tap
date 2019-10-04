class SpotifyTui < Formula
  version 'v0.3.0'
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-#{version}.tar.gz"
    sha256 "c6d7ddb7d0a922b9ff37632ad3d5c8ca59c1cdbe34714045443fa6009c6604c0"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
