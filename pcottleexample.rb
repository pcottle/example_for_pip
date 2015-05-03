class Pcottleexample < Formula
  url "https://github.com/pcottle/example_for_pip/raw/master/dist/pcottleexample.tar.gz"
  sha256 "038753f944edf7b3d6b0dbcf0056350eead1e14db4a3c70fafb711e9a31be3d4"
  version "0.0.3"
  depends_on :python => :recommended if MacOS.version <= :snow_leopard

  def install
    puts 'Unpacking PathPicker'
    system "tar xopf /Library/Caches/Homebrew/example-0.0.3.tar.gz -C /Users/pcottle/Desktop/"
    puts 'Symlinking bash script'
    system "ln -f -s /Users/pcottle/Desktop/example /usr/local/bin/pcottleexample"
  end

end
