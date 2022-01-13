class General < Formula
    desc "Code generation for your modules"
    homepage "https://github.com/rosberry/general"
    url "https://github.com/rosberry/general/archive/refs/tags/0.5.tar.gz"
    version "0.5"
    sha256 "165775069da0b7966b63ba6b926b3c001348cfce07ac17fb8e5220590abfd579"

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
