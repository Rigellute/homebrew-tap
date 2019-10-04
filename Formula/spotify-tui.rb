class SpotifyTui < Formula
  version 'v0.3.0'
  desc "A terminal user interface for Spotify"
  homepage "https://github.com/Rigellute/spotify-tui"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/Rigellute/spotify-tui/releases/download/#{version}/spotify-tui-#{version}.tar.gz"
    sha256 "891db6a35f85fb14dbac024211da5120bed976bc8c430831872f2192648d9d46"
  end

  def install
    bin.install "spt"
  end

  test do
    system "#{bin}/spt", "--version"
  end
end
