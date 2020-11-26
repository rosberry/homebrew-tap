class General < Formula
    desc "Code generation for your modules"
    homepage "https://github.com/rosberry/general"
    url "https://github.com/rosberry/general/archive/0.1.2.tar.gz"
    version "0.1.2"
    sha256 "3ce1edc79ca95e374163723e9ae9531b3069b2a6cf39a181f4b78740886ad9ce"

    def install
        system "swift", "build",
            "--configuration", "release",
            "--enable-pubgrub-resolver",
            "--disable-sandbox"
        bin.install '.build/release/general'
    end
end
