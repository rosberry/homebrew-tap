class Fastfood < Formula
  desc "🍔🍟 Share Fastfile between projects"
  homepage "https://github.com/rosberry/fastfood"
  version "1.4.2"
  url "https://github.com/rosberry/fastfood/releases/download/#{version}/fastfood.zip"
  sha256 "83e3e0b0ac4b0bc63e0cf71d6e8b93b0f745c2190c9c0da62f6b97834caf5463"

  depends_on :xcode => ["10.2", :build]

  def install
    bin.install Dir["bin/*"]
    include.install Dir["include/*"]
  end

  test do
    system bin/"fastfood", "-version"
  end

end
