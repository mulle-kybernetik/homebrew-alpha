class MulleBuild < Formula
  homepage "http://www.mulle-kybernetik.com/software/git/mulle-build"
  desc "Cross-platform builder using cmake and mulle-bootstrap"
  url "http://www.mulle-kybernetik.com/software/git/mulle-build/tarball/3.0.2"
  version "3.0.2"
  sha256 "76486378d7240438f3910093351bbe4652b6ff45313c4af87409697505fd03b1"

  depends_on 'mulle-kybernetik/alpha/mulle-bootstrap'
  depends_on 'cmake'

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-build.rb
