class Bovine < Formula
  desc "Manager for single node Rancher clusters"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/bovine/archive/0.3.0.tar.gz"
  sha256 "5d8c752448cf32054a4ba25944c6873fdf8697d0cc90e919c7a9d37ff612d489"
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
