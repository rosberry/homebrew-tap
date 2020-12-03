class Depo < Formula
    desc "Tool for convenient multiple package managers usage in your iOS project"
    homepage "https://github.com/rosberry/depo"
    url "https://github.com/rosberry/depo/archive/1.0.0.tar.gz"
    version "1.0.0"
    sha256 "cf522eb641d875bf5c25f4b11fec7046231d28c53213091d4732e779fe6d84e9"
  
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
