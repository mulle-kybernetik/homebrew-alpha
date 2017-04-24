class MulleBootstrap < Formula
  homepage "http://www.mulle-kybernetik.com/software/git/mulle-bootstrap"
  desc "Dependency manager for cross-platform projects"
  url "http://www.mulle-kybernetik.com/software/git/mulle-bootstrap/tarball/3.5.0"
  version "3.5.0"
  sha256 "6ee1bbafdb718e25ca2827e781fc8146bb1d9ce333aab21432de6fbc66419dd6"

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-bootstrap.rb
