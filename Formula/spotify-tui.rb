class SpotifyTui < Formula
  version "v0.23.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "a323cbfaed3a688bfddc98f42f38946b79a3c29ae9cb7fe2af8135782917b4c0"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "e7b26dd36475006bbf8de6e0212a2181cab12c5b689b80d42ff8604f1bc0b891"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
