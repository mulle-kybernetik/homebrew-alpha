class MulleHomebrew < Formula
   homepage "https://github.com/mulle-nat/mulle-homebrew"
   desc "Release and publish a project to a homebrew tap"
   url "https://github.com/mulle-nat/mulle-homebrew/archive/3.0.0.tar.gz"
   version "3.0.0"
   sha256 "d3c79c5169ec5653a2fb887da412432b75b22c6efcd7030d64acbd2b034392c8"

   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :build
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build
   depends_on 'cmake' => :build

   def install
      system "mulle-install", "-vvv", "--prefix", "#{prefix}", "--homebrew" 
   end

   test do
      system "mulle-test" 
   end
end
# FORMULA mulle-homebrew.rb
