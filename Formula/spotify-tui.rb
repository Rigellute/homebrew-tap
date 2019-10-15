class SpotifyTui < Formula
  version "v0.6.1"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-#{version}.tar.gz"
    sha256 "3be5317c6d0e6bafed7fcadf96c077997bc307257aae2d90f3b507da68bfa620"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
