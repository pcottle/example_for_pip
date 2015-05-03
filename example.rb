class Example < Formula
  url "https://pypi.python.org/packages/source/p/pcottlepipexample/pcottlepipexample-0.0.5.tar.gz"
  sha256 "96ddbcd7ee6142c5f478ef5a1c51d81eb5d96ef849673632a252ccea121635d9"
  depends_on :python => :recommended if MacOS.version <= :snow_leopard

  def install
    puts 'Unpacking PathPicker'
    system "tar xopf /Library/Caches/Homebrew/example-0.0.5.tar.gz -C /Users/pcottle/Desktop/"
    puts 'Symlinking bash script'
    system "ln -s /Users/pcottle/Desktop/example_for_pip/pcottlepipexample/example /usr/local/bin/pcottleexample"
  end
end
