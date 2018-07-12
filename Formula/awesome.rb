# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Awesome < Formula
  desc ""
  homepage ""
  url "https://github.com/awesomeWM/awesome/archive/v4.2.zip"
  sha256 "d9d4ff487742a9f07bd3e94d679e8e746e6b35a941a6d7574fed98e15455d444"
  depends_on "cmake" => :build
  depends_on :x11
  depends_on "lua"
  depends_on "cairo"
  depends_on "pango"
  depends_on "dbus"
  depends_on "xcb-util"
  depends_on "asciidoc" => :build
  depends_on "gdk-pixbuf"
  depends_on "xcb-util-cursor"
  depends_on "xcb-util-keysyms"
  depends_on "xcb-util-image"
  depends_on "xcb-util-renderutil"
  depends_on "xcb-util-wm"
  depends_on "libxkbcommon"
  depends_on "imagemagick" => :build
  depends_on "libxdg-basedir"
  depends_on "startup-notification"

  def install
    system "mkdir", "build"
    Dir.chdir("build")

    system "cmake", "..", *std_cmake_args
  end

  test do
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
