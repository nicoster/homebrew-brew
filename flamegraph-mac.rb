class FlamegraphMac < Formula
    desc "Take stackshots with undocumented syscall to make flamegraph on MacOS."
    homepage "https://github.com/nicoster/flamegraph-mac"
    url "https://github.com/nicoster/flamegraph-mac/raw/master/archive/flamegraph-mac-master-c3f75a1-20200225-220439.tar.gz"
    sha256 "f10bc360ce3c6ddf6fb9a1394c99542a168cec5c5da52c5694864267329f828e"
    version "1.3.2"
  
    depends_on "luajit"
  
    bottle :unneeded
 
    def caveats; <<~EOS
        This tool is installed by the name of `mkflamegraph` to:
            /usr/local/bin/mkflamegraph

        It requires root privileges to take stackshots of another process. 
        mkflamegraph invokes `sudo` internally when taking stackshots.  

    EOS
    end

    def install
      bin.install "bin/mkflamegraph"
      lib.install "lib/flamegraph.pl"
      lib.install "lib/foldstackshots.sh"
      lib.install "lib/kcdata.py"
      lib.install "lib/stackcollapse-stackshot.lua"
      lib.install "lib/stackshots.lua"
      lib.install "lib/argparse.lua"
    end
  end