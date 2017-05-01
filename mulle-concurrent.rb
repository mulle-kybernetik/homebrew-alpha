class MulleConcurrent < Formula
   homepage "https://github.com/mulle-nat/mulle-concurrent"
   desc "Lock- and Wait-free Hashtable (and an Array too) in C"
   url "https://github.com/mulle-nat/mulle-concurrent/archive/1.3.1.tar.gz"
   version "1.3.1"
   sha256 "85ce8ec99ed258a6346c2e8402e7e614a1f4621634e849f1c5e7a14728d0597b"

   depends_on 'mulle-kybernetik/alpha/mulle-allocator'
   depends_on 'mulle-kybernetik/alpha/mulle-aba'
   depends_on 'mulle-kybernetik/alpha/mulle-thread'

   depends_on 'mulle-kybernetik/alpha/mulle-build' => :build
   depends_on 'mulle-kybernetik/alpha/mulle-bootstrap' => :build
   depends_on 'cmake' => :build

   def install
      system "mulle-install", "-e", "--prefix", "#{prefix}", "--homebrew"
   end

   test do
      system "mulle-test"
   end
end
# FORMULA mulle-concurrent.rb
