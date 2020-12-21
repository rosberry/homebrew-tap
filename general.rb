class General < Formula
    desc "Code generation for your modules"
    homepage "https://github.com/rosberry/general"
    url "https://github.com/rosberry/general/archive/0.2.tar.gz"
    version "0.2"
    sha256 "5e295825f6c2f2651981f569e9d0da7b7d6da82e56d781dc1f5251edf9b58952"

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
