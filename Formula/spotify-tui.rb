class SpotifyTui < Formula
  version "v0.16.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "16ca0e4c37982db6c25486456130451c5a7eb9d97ff4f8b20cccf5516c7757e0"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "9c368a1a48d52c7241102e7c6774e811b96dac70411db73bc301da57c9de6d5a"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
