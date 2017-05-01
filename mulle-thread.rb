class MulleThread < Formula
   homepage "https://github.com/mulle-nat/mulle-thread"
   desc "Cross-platform threads and atomic operations"
   url "https://github.com/mulle-nat/mulle-thread/archive/3.3.3.tar.gz"
   version "3.3.3"
   sha256 "e72139f7fe83f8df3a6cf6ef0406a904c8a5180f2e94e22fefb742aa376e90ff"

   depends_on 'mulle-kybernetik/alpha/mulle-c11'

   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build
   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :build
   depends_on 'cmake' => :build

   def install
      system "mulle-install", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-thread.rb
