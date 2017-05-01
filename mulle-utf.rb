class MulleUtf < Formula
   homepage "https://github.com/mulle-nat/mulle-utf"
   desc "UTF8-16-32 analysis, conversion, classification library"
   url "https://github.com/mulle-nat/mulle-utf/archive/1.0.9.tar.gz"
   version "1.0.9"
   sha256 "df9d98c3ee0681063011dd85d0d783e1714bf12d95699209021b3039204274e6"

   depends_on 'mulle-kybernetik/alpha/mulle-allocator'
   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build

   def install
      system "mulle-install", "-e", "--prefix", "#{prefix}"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-utf.rb
