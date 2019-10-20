class SpotifyTui < Formula
  version "v0.7.3"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "a489cf0a2e499873b87a253f918d957fe9ccadf1a25024ca2c95f87d213c8bac"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "f88067fd337885fc65f7406298260b9b032cfceb5173853f5dca55a125a79e8b"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
