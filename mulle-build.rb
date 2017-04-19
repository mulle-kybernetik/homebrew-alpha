class MulleBuild < Formula
  homepage "http://www.mulle-kybernetik.com/software/git/mulle-build"
  desc "Cross-platform builder using cmake and mulle-bootstrap"
  url "http://www.mulle-kybernetik.com/software/git/mulle-build/tarball/3.4.0"
  version "3.4.0"
  sha256 "45549f16d3b673248238945eebae9b6cb2e580a038a7fe05ef6307939762d50e"

  depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :run

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-build.rb
