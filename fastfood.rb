class Fastfood < Formula
  desc "🍔🍟 Share Fastfile between projects"
  homepage "https://github.com/rosberry/fastfood"
  version "1.4.3"
  url "https://github.com/rosberry/fastfood/releases/download/#{version}/fastfood.zip"
  sha256 "799c7fd057ef97b4ff258cec420eae4f70bbd225bcc94585c3d980355facc197"

  depends_on :xcode => ["10.2", :build]

  def install
    bin.install Dir["bin/*"]
    include.install Dir["include/*"]
  end

  test do
    system bin/"fastfood", "-version"
  end

end
