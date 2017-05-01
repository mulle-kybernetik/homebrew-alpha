class MulleScion < Formula
  homepage "https://www.mulle-kybernetik.com/software/git/MulleScion"
  desc "Templating Engine in Objective-C"
  url "https://www.mulle-kybernetik.com/software/git/MulleScion/tarball/1854"
  version "1854"
  sha256 "a6b305171a7a2e1839134e972c28d7adb43e8e4ab4c77740d1bd4238c4d2fb9a"

  depends_on "mulle-kybernetik/alpha/mulle-bootstrap"
  depends_on :xcode => :build
  depends_on :macos => :snow_leopard

#  depends_on "zlib"
  def install
     system "mulle-bootstrap"
     xcodebuild "install", "-target", "mulle-scion", "DSTROOT=/", "INSTALL_PATH=#{bin}"
  end

  test do
    system pwd
    system "(", "cd tests", ";", "./run-all-scion-tests.sh", "#{bin}/mulle-scion", ")"
  end
end
# FORMULA mulle-scion.rb
