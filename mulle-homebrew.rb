class MulleHomebrew < Formula
   homepage "https://github.com/mulle-nat/mulle-homebrew"
   desc "Release and publish a project to a homebrew tap"
   url "https://github.com/mulle-nat/mulle-homebrew/archive/1.0.5.tar.gz"
   version "1.0.5"
   sha256 "45af93154e7230f6ea4c719fb7bed086440cadac6bffdd9554a5467fe362a2ae"

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
