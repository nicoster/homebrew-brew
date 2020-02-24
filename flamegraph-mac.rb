class FlamegraphMac < Formula
    desc "Take stackshots with undocumented syscall to make flamegraph on MacOS."
    homepage "https://github.com/nicoster/flamegraph-mac"
    url "https://github.com/nicoster/flamegraph-mac/raw/master/archive/flamegraph-mac-master-74b3778-20200224-222622.tar.gz"
    sha256 "9c74d0672de081b3d5011c66dc3801817ae4602b9b930a48fad4c7f726281544"
    version "1.3.0"
  
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
    end
  end