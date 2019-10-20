class SpotifyTui < Formula
  version "v0.7.1"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spt-macos.tar.gz"
    sha512 "e411db5dbc8508c138fcae9f6775acc7ce32e429b70fbfa84e6fe7527bebb1474de06fb29429ddbe24d2687629f4e84dcbf50236f978307a961f3d87162bf21e"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spt-linux.tar.gz"
    sha512 "bf3155371102b2709dc90bf23ae39f972d8e2b0e69f8e07f5f2afe34f22d4f7e778017d2148607f2d1635f55f2716236df392899659f52be214473a35d61d889"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
