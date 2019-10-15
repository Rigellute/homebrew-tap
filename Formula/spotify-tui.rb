class SpotifyTui < Formula
  version "v0.6.2"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-#{version}.tar.gz"
    sha256 "11fdcd06018e47d4db1296f1cf0e02a2bbb1b915f364007a6f7208063ec41d5a"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
