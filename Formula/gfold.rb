class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/refs/tags/4.3.2.tar.gz"
  sha256 "95b3694f4906f737447a787e2d367ae74cf97f27f74150312bcfb1381badb3cf"
  license "Apache-2.0"

  depends_on "rust" => :build

  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args(path: "./crates/gfold")
  end

  test do
    system bin/"gfold"
  end
end
