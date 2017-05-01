class MulleC11 < Formula
   homepage "https://github.com/mulle-nat/mulle-c11"
   desc "Cross-platform compiler glue"
   url "https://github.com/mulle-nat/mulle-c11/archive/1.1.1.tar.gz"
   version "1.1.1"
   sha256 "54460d4d89c94a6814624677d61246cde9e3d53969c3b0fea3e7820f22a08e20"

   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "-e", "--prefix", "#{prefix}"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-c11.rb
