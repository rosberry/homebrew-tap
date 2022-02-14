class Depo < Formula
    desc "Tool for convenient multiple package managers usage in your iOS project"
    homepage "https://github.com/rosberry/depo"
    url "https://github.com/rosberry/depo/archive/1.1.1.tar.gz"
    version "1.1.1"
    sha256 "44b418ab70ff8c2d80c180134e668ca3b6f42511faa59cef4081fbf8f1e4736e"
  
    def install
      system "make", "build"
  
      bins = [
        "depo"
      ]
  
      bins.each { |binary|
        bin.install binary
      }
    end
  
    test do
      system "false"
    end
end
