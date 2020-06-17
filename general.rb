class General < Formula
    desc "Code generation for your modules"
    homepage "https://github.com/rosberry/general"
    url "https://github.com/rosberry/general/archive/0.1.0.tar.gz"
    version "0.1.0"
    sha256 "ade9133eaa212d2b9cfbb3b45e0d2fcc24d6af27311a0da0bb14099048ece88e"

    def install
        system "swift", "build",
            "--configuration", "release",
            "--enable-pubgrub-resolver",
            "--disable-sandbox"
        bin.install '.build/release/prism'
    end
end
