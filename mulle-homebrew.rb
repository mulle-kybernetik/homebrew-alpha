class MulleHomebrew < Formula
   homepage "https://github.com/mulle-nat/mulle-homebrew"
   desc "Release and publish a project to a homebrew tap"
   url "https://github.com/mulle-nat/mulle-homebrew/archive/1.0.4.tar.gz"
   version "1.0.4"
   sha256 "52476a10cf9559d213a7fcd2177c7cccdbfe1659b642d6b5b6fc4511e170a2af"

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
