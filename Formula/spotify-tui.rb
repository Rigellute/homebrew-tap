class SpotifyTui < Formula
  version "v0.18.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "2a8109bf45a353f6f437e75bb1a5b97b22d159f60fca0fa948761d38c4cd8165"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "b8ab25d8683ffcc5a578c44a8da88f1835fcfe9963312a406719c80aa8e78fa9"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
