class MulleAllocator < Formula
   homepage "https://github.com/mulle-nat/mulle-allocator"
   desc "Flexible C memory allocation scheme with leak checking"
   url "https://github.com/mulle-nat/mulle-allocator/archive/2.1.7.tar.gz"
   version "2.1.7"
   sha256 "69819bf18093c958dda9725206029a7b7a393e8d90fced5eed13d99141f035ba"

   depends_on 'mulle-kybernetik/alpha/mulle-c11'
   depends_on 'mulle-kybernetik/alpha/mulle-thread'

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
# FORMULA mulle-allocator.rb
