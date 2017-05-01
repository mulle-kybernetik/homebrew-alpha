class MulleAba < Formula
   homepage "https://github.com/mulle-nat/mulle-aba"
   desc "A portable, lock-free solution to the ABA problem in C"
   url "https://github.com/mulle-nat/mulle-aba/archive/1.4.5.tar.gz"
   version "1.4.5"
   sha256 "d32570b79ea42e00a1a2f6fd1512c0c5b73f5f450d4715edbbfe6ed6202be451"

   depends_on 'mulle-kybernetik/alpha/mulle-c11'
   depends_on 'mulle-kybernetik/alpha/mulle-allocator'
   depends_on 'mulle-kybernetik/alpha/mulle-thread'
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-aba.rb
