class General < Formula
    desc "Code generation for your modules"
    homepage "https://github.com/rosberry/general"
    url "https://github.com/rosberry/general/tarball/brew"
    version "0.2"
    sha256 "09bb0f8c6c1aa09df6842fac44fa20b22c0f1676148512a255ccee48775924b9"

    def install
      system "make", "general"
      bin.install 'general'
      bash_completion.install "Scripts/completions/general" => "general"
      zsh_completion.install  "Scripts/completions/_general" => "_general"
      fish_completion.install "Scripts/completions/general.fish" => "general.fish"
    end
end
