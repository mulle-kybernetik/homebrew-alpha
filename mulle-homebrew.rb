class MulleHomebrew < Formula
   homepage "https://github.com/mulle-nat/mulle-homebrew"
   desc "Release and publish a project to a homebrew tap"
   url "https://github.com/mulle-nat/mulle-homebrew/archive/2.0.0.tar.gz"
   version "2.0.0"
   sha256 "b551bca369aeab30a7762e8598ce4a1332ac96b815dff13373bce0effc793bc4"

   depends_on 'mulle-kybernetik/software/mulle-bootstrap' => :build
   depends_on 'mulle-kybernetik/software/mulle-build' => :build
   depends_on 'cmake' => :build

   def install
      system "mulle-install", "-vvv", "--prefix", "#{prefix}", "--homebrew" 
   end

   test do
      system "mulle-test" 
   end
end
# FORMULA mulle-homebrew.rb
