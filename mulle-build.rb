class MulleBuild < Formula
  homepage "http://www.mulle-kybernetik.com/software/git/mulle-build"
  desc "Cross-platform builder using cmake and mulle-bootstrap"
  url "http://www.mulle-kybernetik.com/software/git/mulle-build/tarball/3.4.6"
  version "3.4.6"
  sha256 "d02d8c2c947e44f1f6fb771524b9a7ae184650f831140a084602c832500da171"

  depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :run

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-build.rb
