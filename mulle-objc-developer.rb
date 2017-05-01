class MulleObjcDeveloper < Formula
   homepage "/mulle-objc-developer"
   desc "mulle-objc Developer Environment"
   url "https://github.com/mulle-nat/mulle-objc-developer/archive/0.5.1.tar.gz"
   version "0.5.1"
   sha256 "24e88e6ec772b8002a77c09ac0c5c2cf5ef02326977cf2f3c3180d105d81c31c"

   depends_on 'mulle-kybernetik/alpha/mulle-allocator'
   depends_on 'mulle-kybernetik/alpha/mulle-c11'
   depends_on 'mulle-kybernetik/alpha/mulle-concurrent'
   depends_on 'mulle-kybernetik/alpha/mulle-container'
   depends_on 'mulle-kybernetik/alpha/mulle-vararg'
   depends_on 'mulle-kybernetik/alpha/mulle-thread'
   depends_on 'mulle-kybernetik/alpha/mulle-objc-runtime'
   depends_on 'mulle-kybernetik/alpha/MulleObjC'
   depends_on 'codeon-gmbh/software/mulle-clang'
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-objc-developer.rb
