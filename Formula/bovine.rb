class Bovine < Formula
  desc "Manager for single node Rancher clusters"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/bovine/archive/refs/tags/1.0.3.tar.gz"
  sha256 "96124261df565751e10656a6e27ce4f5e78e7e623152929a22096663238030e8"
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
