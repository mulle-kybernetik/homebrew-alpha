class MulleHomebrew < Formula
   homepage "https://github.com/mulle-nat/MulleHomebrew"
   desc "Release and publish a project to a homebrew tap"
   url "https://github.com/mulle-nat/MulleHomebrew/archive/1.0.0.tar.gz"
   version "1.0.0"
   sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :build
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA MulleHomebrew.rb
