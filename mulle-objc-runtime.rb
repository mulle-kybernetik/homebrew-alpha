class MulleObjcRuntime < Formula
   homepage "https://github.com/mulle-nat/mulle-objc-runtime"
   desc "An Objective-C runtime, written 100% in C"
   url "https://github.com/mulle-nat/mulle-objc-runtime/archive/0.5.11.tar.gz"
   version "0.5.11"
   sha256 "7b8a22e221b11cbedb5a7a3e1ad4be72f66fa55688c826cccdbf928c61d60fc7"
   depends_on 'mulle-kybernetik/alpha/mulle-concurrent'
   depends_on 'mulle-kybernetik/alpha/mulle-vararg'
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "-e", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-objc-runtime.rb
