class FlamegraphMac < Formula
    desc "Take stackshots with undocumented syscall to make flamegraph on MacOS."
    homepage "https://github.com/nicoster/flamegraph-mac"
    url "https://github.com/nicoster/flamegraph-mac/raw/master/archive/flamegraph-mac-master-cb20dd8-20200224-224311.tar.gz"
    sha256 "017dafd62e9dbcaeb9255050a1d7b138743b77428f7cf95d61382776889e0448"
    version "1.3.1"
  
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