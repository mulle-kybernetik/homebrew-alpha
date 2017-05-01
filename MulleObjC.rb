class Mulleobjc < Formula
   homepage "https://github.com/mulle-nat/MulleObjC"
   desc "Objective-C root classes using the mulle-objc runtime"
   url "https://github.com/mulle-nat/MulleObjC/archive/0.1.7.tar.gz"
   version "0.1.7"
   sha256 "13a5a7173cb1a8215c9c1559649c3142161d230c0a80b923427c10238f4ff3c1"

   depends_on 'mulle-kybernetik/alpha/mulle-objc-runtime'
   depends_on 'mulle-kybernetik/alpha/mulle-container'

   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build
   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :build
   depends_on 'cmake' => :build

   def install
      system "mulle-install", "-e", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA MulleObjC.rb
