class MulleBrew < Formula
  homepage "https://www.mulle-kybernetik.com/software/git/mulle-brew"
  desc "Dependency manager for homebrew depedencies"
  url "http://www.mulle-kybernetik.com/software/git/mulle-brew/tarball/3.5.0"
  version "3.5.0"
  sha256 "bb0d336108bfd9fbdaba88f40e6fb5ad28af0dee18bce88fe735315a94e6d5a3"

  depends_on "mulle-kybernetik/alpha/mulle-bootstrap"

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-brew.rb
