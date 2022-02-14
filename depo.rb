class Depo < Formula
    desc "Tool for convenient multiple package managers usage in your iOS project"
    homepage "https://github.com/rosberry/depo"
    url "https://github.com/rosberry/depo/archive/1.1.1.tar.gz"
    version "1.1.1"
    sha256 "60dedaab84b948523621703f3ed438fd2e92055de658b952139dd1aeba7a6c93"
  
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
