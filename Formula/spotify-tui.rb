class SpotifyTui < Formula
  version "v0.17.1"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "4242c547f91d3eb189643a7b359821df4e0829f02b1fa671b68ba9d45804a631"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "17d199e4e1e4886714c96698e8e5d6cae89b5121a8643f9ecd16d92f1ec2261e"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
