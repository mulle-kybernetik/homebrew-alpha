class MulleBuild < Formula
  homepage "http://www.mulle-kybernetik.com/software/git/mulle-build"
  desc "Cross-platform builder using cmake and mulle-bootstrap"
  url "http://www.mulle-kybernetik.com/software/git/mulle-build/tarball/3.4.8"
  version "3.4.8"
  sha256 "800853d74adaab4313d78b354ef5dc1688c47cef0bff976cde748da6a301b51d"

  depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :run

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-build.rb
