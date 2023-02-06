class Gfold < Formula
  desc "CLI tool to help keep track of your Git repositories, written in Rust"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/gfold/archive/refs/tags/4.3.1.tar.gz"
  sha256 "20474ba2e42d734641d770f2ec5e28d5eec9b8947f4146653e2de49241bee9fb"
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
