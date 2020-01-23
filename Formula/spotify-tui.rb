class SpotifyTui < Formula
  version "v0.12.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "4b7ebfef28289754c113c2c2404a7373a7f788287a5eb4d2a5a3d3ed6b4c580b"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "450416bbde98edc260c09300f09688da1e90d3005fdda782ef33500cdad0bcd0"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
