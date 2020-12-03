class Depo < Formula
  desc "Tool for convenient multiple package managers usage in your iOS project"
  homepage "https://github.com/rosberry/depo"
  url "https://github.com/rosberry/Depo/archive/1.0.0.tar.gz"
  sha256 "41574a14b43b78666056125d0960830b868e725e8513f245c77d3847126db607"
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
