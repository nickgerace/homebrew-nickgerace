class Bovine < Formula
  desc "Manager for single node Rancher clusters"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/bovine/archive/1.0.0.tar.gz"
  sha256 "88788eafcffaa82387886a1bd3680affa2d768a1e3c0e7e021decd2aa8ab5540"
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
