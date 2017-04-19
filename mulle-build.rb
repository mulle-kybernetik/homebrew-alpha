class MulleBuild < Formula
  homepage "http://www.mulle-kybernetik.com/software/git/mulle-build"
  desc "Cross-platform builder using cmake and mulle-bootstrap"
  url "http://www.mulle-kybernetik.com/software/git/mulle-build/tarball/3.4.1"
  version "3.4.1"
  sha256 "72459274621ed0ef3b47c071da770233a2e17efe7fa660588ea43d83873b5ed4"

  depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :run

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-build.rb
