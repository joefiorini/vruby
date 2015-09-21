# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Vruby < Formula
  desc "It's like virtualenv, but for ruby."
  homepage "https://github.com/joefiorini/vruby"
  url "https://github.com/joefiorini/vruby/archive/master.zip"
  sha256 "e91b28f50e3bfa8f94c56cc8c72c2c34c6219f4f23d3c41ee2f9011c3bfb7b01"
  version "1.0-pre"

  def install
    prefix.install Dir['bin']
    prefix.install Dir['share']
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test vruby`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
