class Fpp < Formula
  homepage "https://facebook.github.io/PathPicker/"
  # To be changed -- just a sample tar for now
  url "https://github.com/pcottle/example_for_pip/raw/master/dist/pcottleexample.0.0.4.tar.gz"
  sha256 "038753f944edf7b3d6b0dbcf0056350eead1e14db4a3c70fafb711e9a31be3d4"
  head "https://github.com/facebook/pathpicker.git"

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    puts buildpath
    # we need to copy the bash file and source python files
    libexec.install Dir["*"] 
    # and then symlink the bash file
    bin.install_symlink libexec/"example"
  end

end
