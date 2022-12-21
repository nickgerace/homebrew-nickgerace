class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/refs/tags/4.1.2.tar.gz"
  sha256 "e1ff92ef3fef35be416bfbef9c7a198ffdb675499a4dde2c497e919b99201de9"
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
