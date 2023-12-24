class Gfold < Formula
  desc "DEPRECATED (NOW AVAILABLE IN CORE): CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/refs/tags/4.4.1.tar.gz"
  sha256 "bdcbebd543f7222e253e4324677a5c524f90543cbf859a448359ac426b9453d9"
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
