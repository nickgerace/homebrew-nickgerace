class Bovine < Formula
  desc "Manager for single node Rancher clusters"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/bovine/archive/refs/tags/1.0.2.tar.gz"
  sha256 "37e6ccd81a99f810eb9f4cf11e1c3e3096975274a36e8aaafd2461af0e0d4c29"
  license "Apache-2.0"

  depends_on "rust" => :build

  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"bovine"
  end
end
