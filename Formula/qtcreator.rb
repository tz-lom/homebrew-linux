# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Qtcreator < Formula
  desc "Best C++ IDE"
  homepage "https://download.qt.io/official_releases/qtcreator/4.6/4.6.2/qt-creator-opensource-src-4.6.2.tar.gz"
  url "https://download.qt.io/official_releases/qtcreator/4.6/4.6.2/qt-creator-opensource-src-4.6.2.tar.gz"
  depends_on "qt"
  depends_on "llvm"
  depends_on "valgrind"
  depends_on "git"
  depends_on "cmake" 
  depends_on "qbs"
  depends_on "pkg-config" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "qmake", "qtcreator.pro"
    # system "cmake", ".", *std_cmake_args
    system "make", "INSTALL_ROOT=#{prefix}", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test qtcreator`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
