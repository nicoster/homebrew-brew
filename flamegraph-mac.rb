class FlamegraphMac < Formula
    desc "Take stackshots with undocumented syscall to make flamegraph on MacOS."
    homepage "https://github.com/nicoster/flamegraph-mac"
    url "https://github.com/nicoster/flamegraph-mac/raw/master/archive/flamegraph-mac-master-12d5a29-20200303-174517.tar.gz"
    sha256 "b2b9760d8ad1c1726ec010c70b87b307f5044a4296ab9879b73fd127bdbe2507"
    version "1.3.6"
  
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
      lib.install "lib/cjson.so"
    end
  end