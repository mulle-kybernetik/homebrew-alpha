class MulleHomebrew < Formula
   homepage "https://github.com/mulle-nat/mulle-homebrew"
   desc "Release and publish a project to a homebrew tap"
   url "https://github.com/mulle-nat/mulle-homebrew/archive/1.0.3.tar.gz"
   version "1.0.3"
   sha256 "0f16b247b63514791ee3213f007ffd54c10fda5b74a30f6b180ac36454a61c07"

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
