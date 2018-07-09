require 'formula'

class Gmock < Formula
  desc "Google Test"
  homepage "https://github.com/google/googletest"
  head "git://github.com/google/googletest.git", :using => :git

  stable do
    url "https://github.com/google/googlemock/archive/release-1.8.0.tar.gz"
    sha256 "58a6f4277ca2bc8565222b3bbd58a177609e9c488e8a72649359ba51450db7d8"
  end

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end
end
