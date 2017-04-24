class MulleBrew < Formula
  homepage "https://www.mulle-kybernetik.com/software/git/mulle-brew"
  desc "Dependency manager for homebrew depedencies"
  url "http://www.mulle-kybernetik.com/software/git/mulle-brew/tarball/3.5.2"
  version "3.5.2"
  sha256 "ce1f8f6bd424d1a54c343b54c9b67ed11435054ec4d63086eb22ad8cbe7e32d8"

  depends_on "mulle-kybernetik/alpha/mulle-bootstrap"

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-brew.rb
