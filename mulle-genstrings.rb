class MulleGenstrings < Formula
  homepage "https://www.mulle-kybernetik.com/software/git/mulle-genstrings"
  desc "a replacement for Apple's genstrings"
  url "https://www.mulle-kybernetik.com/software/git/mulle-genstrings/tarball/18.48.5"
  version "18.48.5"
  sha256 "b44a601c89abdbe155700a230e005b680312ba1e9163eeb5d000bafe00016c06"

  depends_on :xcode => :build
  depends_on :macos => :snow_leopard

#  depends_on "zlib"
  def install
     xcodebuild "install", "DSTROOT=/", "INSTALL_PATH=#{bin}"
  end

  test do
    system "#{bin}/mulle-genstrings", "-version"
  end
end
# FORMULA mulle-genstrings.rb
