class MulleSprintf < Formula
   homepage "https://github.com/mulle-nat/mulle-sprintf"
   desc " An extensible sprintf function supporting stdarg and mulle-vararg"
   url "https://github.com/mulle-nat/mulle-sprintf/archive/0.8.1.tar.gz"
   version "0.8.1"
   sha256 "e2a4dbb11dd16e929689a9ce4a3d96abe51d12fa30853b4da2bad7a932464ae2"

   depends_on 'mulle-kybernetik/alpha/mulle-buffer'
   depends_on 'mulle-kybernetik/alpha/mulle-utf'
   depends_on 'mulle-kybernetik/alpha/mulle-vararg'
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "-e", "--prefix", "#{prefix}"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-sprintf.rb
