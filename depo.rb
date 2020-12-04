class Depo < Formula
    desc "Tool for convenient multiple package managers usage in your iOS project"
    homepage "https://github.com/rosberry/depo"
    url "https://github.com/rosberry/depo/archive/1.0.2.tar.gz"
    version "1.0.2"
    sha256 "ea5512746444fb050e100fc78a639190bad10786d545f7071ca73c514dc18655"
  
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
