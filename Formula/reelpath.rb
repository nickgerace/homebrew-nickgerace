class Reelpath < Formula
  desc "DEPRECATED: CLI tool that prints the absolute path for a given file or directory"
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/reelpath/archive/refs/tags/1.2.2.tar.gz"
  sha256 "1f916d3e8ffd8ea991b16c662269b9277ca08680ffc2126537ae6b626c9d690e"
  license "Apache-2.0"

  depends_on "rust" => :build

  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"reelpath"
  end
end
