class FlamegraphMac < Formula
    desc "Take stackshots with undocumented syscall to make flamegraph on MacOS"
    homepage "https://github.com/TheHipbot/weather"
    url "https://github.com/nicoster/flamegraph-mac/blob/master/archive/flamegraph-mac-master-c7c02da-20200223-215730.tar.gz"
    sha256 "84dc0b30698a99af2f0b68528c8f8dc27c208ba944f60265f4fe531067a9ebaa"
    version "1.1.0"
  
    depends_on "luajit"
  
    bottle :unneeded
  
    def install
      bin.install "bin/mkflamegraph"
      lib.install "lib/*"
    end
  end