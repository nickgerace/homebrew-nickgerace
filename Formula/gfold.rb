class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/refs/tags/4.2.0.tar.gz"
  sha256 "1919135665bcab3144f0ca3987f4d0526e383d3d06fb33764f0e3215d3599cb4"
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
