class MulleHomebrew < Formula
  desc "Release and publish a project to a homebrew tap"
  homepage "https://github.com/mulle-nat/mulle-homebrew"
  url "https://github.com/mulle-nat/mulle-homebrew/archive/3.4.0.tar.gz"
  sha256 "ebf18dee0dc836c18f5f5d60bda93956ead634bf2e26ee6f05af1125ecec27e9"
  # version "3.4.0"

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
