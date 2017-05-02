class MulleObjcDeveloper < Formula
   homepage "https://github.com/mulle-nat/mulle-objc-developer"
   desc "mulle-objc Developer Environment"
   url "https://github.com/mulle-nat/mulle-objc-developer/archive/0.5.1.3.tar.gz"
   version "0.5.1.3"
   sha256 "00e4ca8b5bb6eb938108e116f9ae27b488b3a6077a02e04cd9ac08de9b34498e"
   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap'
   depends_on 'mulle-kybernetik/alpha/mulle-build'
   depends_on 'codeon-gmbh/software/mulle-clang'
   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :build
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "-e", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-objc-developer.rb
