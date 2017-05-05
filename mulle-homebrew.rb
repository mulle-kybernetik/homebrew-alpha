class MulleHomebrew < Formula
   homepage "https://github.com/mulle-nat/mulle-homebrew"
   desc "Release and publish a project to a homebrew tap"
   url "https://github.com/mulle-nat/mulle-homebrew/archive/3.0.2.tar.gz"
   version "3.0.2"
   sha256 "e2b86eb75b38aa21d93a5341324dd49e0a4be3768432465aa0dda5adc4a08b5e"

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
