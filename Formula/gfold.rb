class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/refs/tags/4.3.0.tar.gz"
  sha256 "2072d00511995a1e0ad449dd88e460ae44e98f0f14aa67fe238ed8515da86a52"
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
