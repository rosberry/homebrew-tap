class General < Formula
    desc "Code generation for your modules"
    homepage "https://github.com/rosberry/general"
    url "https://github.com/rosberry/general/archive/refs/tags/0.5.tar.gz"
    version "0.5"
    sha256 "0ccc0449f641d7acb83d2f83719fdc993933c0b096abf0893d55539c32a13741"

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
