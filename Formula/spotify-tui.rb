class SpotifyTui < Formula
  version "v0.10.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "1968b1caf3a9f4c916dcc985b5bc8e9ffbb6d3322a5390870c67d2e9044c69c8"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "4fd5aca58b30766bc23fa0690652a683a9fb752a958267583a36d0c417328c67"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
