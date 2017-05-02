class MulleBuild < Formula
  homepage "http://www.mulle-kybernetik.com/software/git/mulle-build"
  desc "Cross-platform builder using cmake and mulle-bootstrap"
  url "http://www.mulle-kybernetik.com/software/git/mulle-build/tarball/3.4.10"
  version "3.4.10"
  sha256 "59c20a9902b30b4bc2996312f4e4e83f377dfa763128f1d83a4b54447f0f5fca"

  depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :run

  def install
     system "./install.sh", "#{prefix}"
  end

  test do
  end
end
# FORMULA mulle-build.rb
