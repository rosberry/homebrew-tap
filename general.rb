class General < Formula
    desc "Code generation for your modules"
    homepage "https://github.com/rosberry/general"
    url "https://github.com/rosberry/general/archive/0.1.0.tar.gz"
    version "0.1.0"
    sha256 ""

    def install
        system "swift", "build",
            "--configuration", "release",
            "--enable-pubgrub-resolver",
            "--disable-sandbox"
        bin.install '.build/release/prism'
    end
end
