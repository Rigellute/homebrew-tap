class SpotifyTui < Formula
  version "v0.15.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "bfb8b2f849a0636b6e402766b835ec6e1123967f77340594564956d3c18f44f0"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "d6d5bcdd04afb9a2ae1ba08f6675b02ea4241bf4289268bcca2c02181148b89d"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
