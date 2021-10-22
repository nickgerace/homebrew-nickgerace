class Bovine < Formula
  desc "Manager for single node Rancher clusters"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/bovine/archive/refs/tags/1.0.1.tar.gz"
  sha256 "7b2221c394a435d3a86e1da3919ca0bb7a2be3ea816bf2c06fdd7788be6d4502"
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
