class General < Formula
    desc "Code generation for your modules"
    homepage "https://github.com/rosberry/general"
    url "https://github.com/rosberry/general/archive/0.1.1.tar.gz"
    version "0.1.1"
    sha256 "a5c9d460b1fbb9ad16efca2c1c76f1a7a13195500e2ff8d85f7fa5c0ab837349"

    def install
        system "swift", "build",
            "--configuration", "release",
            "--enable-pubgrub-resolver",
            "--disable-sandbox"
        bin.install '.build/release/general'
    end
end
