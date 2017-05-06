class MulleHomebrew < Formula
   homepage "https://github.com/mulle-nat/mulle-homebrew"
   desc "Release and publish a project to a homebrew tap"
   url "https://github.com/mulle-nat/mulle-homebrew/archive/3.1.0.tar.gz"
   version "3.1.0"
   sha256 "834fab56271ae4e1543e379f4231dbe93996f10797b29c2b579853e1c184bfd5"

   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :build
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build
   depends_on 'cmake' => :build

   def install
      system "mulle-install", "-vvv", "--prefix", "#{prefix}", "--homebrew" 
   end

   test do
      system "mulle-test", "-vvv", "--fast-test" 
   end
end
# FORMULA mulle-homebrew.rb
