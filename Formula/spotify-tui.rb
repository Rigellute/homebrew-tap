class SpotifyTui < Formula
  version "v0.7.5"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "2f22512559e7b209be1effe7a942e1d30e6cc3271ae333baea729de67317c3ec"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "f7a5649c988dee9ff1f6a7636ba4c974da33edb44cf2264c26bbae6e5796debe"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
