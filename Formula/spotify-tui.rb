class SpotifyTui < Formula
  version "v0.19.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "d991891a88f3ee08cc60fef31afd0f4a0adb5f3c8e6433bd7cceb3eba2562ad3"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "b5a40090ec1a3b3013214e9ac389775f0a07ae8c90cbac6a9b2869f99ad873c3"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
