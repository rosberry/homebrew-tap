class General < Formula
    desc "Code generation for your modules"
    homepage "https://github.com/rosberry/general"
    url "https://github.com/rosberry/general/archive/0.3.tar.gz"
    version "0.3"
    sha256 "b4af2747b54111f141b8a9afa50ab7a2b7cc47943c554235f240dcabef7c3cdb"

    def install
      system "swift", "build",
             "--configuration", "release",
             "--disable-sandbox"
      bin.install '.build/release/general'

      bash_completion.install "Scripts/completions/general" => "general"
      zsh_completion.install  "Scripts/completions/_general" => "_general"
      fish_completion.install "Scripts/completions/general.fish" => "general.fish"
    end
end
