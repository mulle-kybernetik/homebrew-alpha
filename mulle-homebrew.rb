class MulleHomebrew < Formula
   homepage "https://github.com/mulle-nat/mulle-homebrew"
   desc "Release and publish a project to a homebrew tap"
   url "https://github.com/mulle-nat/mulle-homebrew/archive/3.0.1.tar.gz"
   version "3.0.1"
   sha256 "ff3ce129b41de334b8a4230e33287bb8c9e258fc940ad65cb5fc6927b6b557c8"

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
