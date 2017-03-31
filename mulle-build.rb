class MulleBuild < Formula
  homepage "http://www.mulle-kybernetik.com/software/git/mulle-build"
  desc "Cross-platform builder using cmake and mulle-bootstrap"
  url "http://www.mulle-kybernetik.com/software/git/mulle-build/tarball/3.1.0"
  version "3.1.0"
  sha256 "bfc99eb37f78c37102d6d6975cbf625f815ba09ddcc1a35b8fac68fc4cfd6385"

  depends_on 'mulle-kybernetik/alpha/mulle-bootstrap'
  depends_on 'cmake'

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-build.rb
