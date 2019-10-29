class SpotifyTui < Formula
  version "v0.8.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "1b2da6ae6c7b76e696a33992d4a01292c7be313592e290613f04d14f42e64e87"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "4eb1ac6540f5972916d3092652b934cc2facb9231ac0230501e9be87b597c215"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
