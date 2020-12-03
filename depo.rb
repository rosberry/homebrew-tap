class Depo < Formula
  desc "Tool for convenient multiple package managers usage in your iOS project"
  homepage "https://github.com/rosberry/depo"
  url "https://github.com/rosberry/depo/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "cca03efdf5e0bbd15c32e20b2ae3ed3d0a8cef30400b055c44bb2ec86fce2e28"
  license "MIT"

  def install
    system "make", "build"

    bins = [
      "Shell/build_swift_package.sh",
      "Shell/build_pod.sh",
      "Shell/merge_package.sh",
      "Shell/move_built_pod.sh",
      ".build/release/depo"
    ]

    bins.each { |binary|
      bin.install binary
    }
  end

  test do
    system "false"
  end
end
