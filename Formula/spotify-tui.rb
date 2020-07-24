class SpotifyTui < Formula
  version "v0.21.0"
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-macos.tar.gz"
    sha256 "fc151cdea4e68decc3eb8ad5927bfad8b8bb22513c8f199be1ed493422951114"
  elsif OS.linux?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-linux.tar.gz"
    sha256 "2a74e6223f36b7e03b31c48da759929da2db593df97143d87c97a349fba8acd7"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
