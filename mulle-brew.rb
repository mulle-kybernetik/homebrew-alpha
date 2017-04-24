class MulleBrew < Formula
  homepage "https://www.mulle-kybernetik.com/software/git/mulle-brew"
  desc "Dependency manager for homebrew depedencies"
  url "http://www.mulle-kybernetik.com/software/git/mulle-brew/tarball/3.5.1"
  version "3.5.1"
  sha256 "9481731bb5e7d2767007c794a74ba6a1b4b130b54226aa2d4ddcfcf4369161e6"

  depends_on "mulle-kybernetik/alpha/mulle-bootstrap"

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-brew.rb
