class Example < Formula
  url "https://github.com/pcottle/example_for_pip/raw/master/dist/pcottleexample.tar.gz"
  sha256 "2f51b3d604ded561b376617857876ff4fa03ce85484abe9b9f068f6bad25994d"
  version "0.0.2"
  depends_on :python => :recommended if MacOS.version <= :snow_leopard

  def install
    puts 'Unpacking PathPicker'
    system "tar xopf /Library/Caches/Homebrew/example-0.0.2.tar.gz -C /Users/pcottle/Desktop/"
    puts 'Symlinking bash script'
    system "ln -s /Users/pcottle/Desktop/example_for_pip/pcottlepipexample/example /usr/local/bin/pcottleexample"
  end

end
