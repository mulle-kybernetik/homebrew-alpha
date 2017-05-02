class MulleObjcDeveloper < Formula
   homepage "https://github.com/mulle-nat/mulle-objc-developer"
   desc "mulle-objc Developer Environment"
   url "https://github.com/mulle-nat/mulle-objc-developer/archive/0.5.1.4.tar.gz"
   version "0.5.1.4"
   sha256 "8e28817cb7d3d4f17840cdd6f8e9362a89cd0c111c3dc75a76fc0c83a6bdad33"
   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap'
   depends_on 'mulle-kybernetik/alpha/mulle-build'
   depends_on 'codeon-gmbh/software/mulle-clang'
   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :build
   depends_on 'mulle-kybernetik/alpha/mulle-build'     => :build

   def install
      system "mulle-install", "-e", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-objc-developer.rb
