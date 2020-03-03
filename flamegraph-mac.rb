class FlamegraphMac < Formula
    desc "Take stackshots with undocumented syscall to make flamegraph on MacOS."
    homepage "https://github.com/nicoster/flamegraph-mac"
    url "https://github.com/nicoster/flamegraph-mac/raw/master/archive/flamegraph-mac-master-6e0a332-20200302-182404.tar.gz"
    sha256 "5a123f2781de41d49f63111d0ac39907630d184e90df24a6c46e9ac69cea3327"
    version "1.3.3"
  
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