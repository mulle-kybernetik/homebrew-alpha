class MulleObjcDeveloper < Formula
   homepage "https://github.com/mulle-nat/mulle-objc-developer"
   desc "mulle-objc Developer Environment"
   url "https://github.com/mulle-nat/mulle-objc-developer/archive/0.5.1.5.tar.gz"
   version "0.5.1.5"
   sha256 "47e9c33193c8361ec5aed3e8ca8d5f804be1583614c175f1745161b925244592"
   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap'
   depends_on 'mulle-kybernetik/alpha/mulle-build'
   depends_on 'codeon-gmbh/software/mulle-clang'
   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :build
   depends_on 'mulle-kybernetik/alpha/mulle-build'     => :build

   def install
      system "mulle-install", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-objc-developer.rb
