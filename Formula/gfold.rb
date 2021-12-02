class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/refs/tags/2.0.2.tar.gz"
  sha256 "f3f3d7e0985c99cbddcf87145fa2378d76239c72fbc203881e3e95996c46e46c"
  license "Apache-2.0"

  depends_on "rust" => :build

  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"gfold"
  end
end
