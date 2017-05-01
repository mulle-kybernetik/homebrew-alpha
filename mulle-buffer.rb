class MulleBuffer < Formula
   homepage "https://github.com/mulle-nat/mulle-buffer"
   desc "A growable C array of unsigned chars"
   url "https://github.com/mulle-nat/mulle-buffer/archive/0.4.5.tar.gz"
   version "0.4.5"
   sha256 "6159f888a5ab59d67c602afa903f4ca248dd9acba3905dba627899190225483d"

   depends_on 'mulle-kybernetik/alpha/mulle-c11'
   depends_on 'mulle-kybernetik/alpha/mulle-allocator'
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "-e", "--prefix", "#{prefix}"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-buffer.rb
