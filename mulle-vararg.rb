class MulleVararg < Formula
   homepage "https://github.com/mulle-nat/mulle-vararg"
   desc "Access variable arguments in struct layout fashion"
   url "https://github.com/mulle-nat/mulle-vararg/archive/0.5.13.tar.gz"
   version "0.5.13"
   sha256 "422719a63a3a4d1b65db8ffa2ecad9522ddc78a1cbce58f7f10b58dfbada7e1a"

   depends_on 'mulle-kybernetik/alpha/mulle-c11'
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-vararg.rb
