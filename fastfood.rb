class Fastfood < Formula
  desc "🍔🍟 Share Fastfile between projects"
  homepage "https://github.com/rosberry/fastfood"
  version "1.4.3"
  url "https://github.com/rosberry/fastfood/archive/#{version}/fastfood.zip"
  sha256 "28574e2e060a7cc95f1d58e25c52eaf83ed8ea6a132aae4676c2277fb5023578"

  depends_on :xcode => ["10.2", :build]

  def install
    bin.install Dir["bin/*"]
    include.install Dir["include/*"]
  end

  test do
    system bin/"fastfood", "-version"
  end

end
