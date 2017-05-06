class MulleHomebrew < Formula
  desc "Release and publish a project to a homebrew tap"
  homepage "https://github.com/mulle-nat/mulle-homebrew"
  url "https://github.com/mulle-nat/mulle-homebrew/archive/3.4.2.tar.gz"
  sha256 "f1cd9ddffcfede102f8f89e690be6b88f377f249ef78b2b707c0ca4dcac836e5"
  # version "3.4.2"

  depends_on "mulle-kybernetik/alpha/mulle-bootstrap" => :build
  depends_on "mulle-kybernetik/alpha/mulle-build" => :build
  depends_on "cmake" => :build

  def install
    system "mulle-install", "-vvv", "--prefix", prefix, "--homebrew"
  end

  test do
    if File.directory? 'tests'
      system "mulle-test", "-vvv", "--fast-test"
    end
  end
end
# FORMULA mulle-homebrew.rb
