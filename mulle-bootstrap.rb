class MulleBootstrap < Formula
  homepage "http://www.mulle-kybernetik.com/software/git/mulle-bootstrap"
  desc "Dependency manager for cross-platform projects"
  url "http://www.mulle-kybernetik.com/software/git/mulle-bootstrap/tarball/3.1.2"
  version "3.1.2"
  sha256 "50776d33fb2d4c1f7d8441cc5c3ca2d6852b116dd67056e9c4e93d31ed49b4a9"

  depends_on :git  => :run
  depends_on :curl => :run
  depends_on :bash => :run

# we can live w/o cmake though
  depends_on :cmake => :run

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-bootstrap.rb
