class MulleHomebrew < Formula
  desc "Release and publish a project to a homebrew tap"
  homepage "https://github.com/mulle-nat/mulle-homebrew"
  url "https://github.com/mulle-nat/mulle-homebrew/archive/3.3.0.tar.gz"
  sha256 "009b0fabda932139f8d18f8eeb5c67c4b37e56274b716e2abe4ecd11c4cfce86"
  # version "3.3.0"

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
