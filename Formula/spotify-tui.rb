class SpotifyTui < Formula
  version "v0.17.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "3a029cccf593ba7799a117cd21d5c4db26dd24af9c1db4edcc0aad4c9b28cd45"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "7d9bc078ffcd7dac8ac69df723affb3a38255a295df5ce9276274d5e628ea899"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
