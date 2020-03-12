class Mkflame < Formula
    desc "Take stackshots with undocumented syscall to make flamegraph on MacOS."
    homepage "https://github.com/nicoster/flamegraph-mac"
    url "https://github.com/nicoster/flamegraph-mac/raw/master/archive/flamegraph-mac-master-592dfc4-20200312-105850.tar.gz"
    sha256 "0d752b0c5cf449b234c7cdde902c93dd847b3d3ecbc20bcbbe96f56ec83ef23a"
    version "1.3.7"
  
    depends_on "luajit"
  
    bottle :unneeded
 
    def caveats; <<~EOS
        This tool is installed by the name of `mkflame` to:
            /usr/local/bin/mkflame

        It requires root privileges to take stackshots of another process. 
        mkflame invokes `sudo` internally when taking stackshots.  

    EOS
    end

    def install
      bin.install "bin/mkflame"
      lib.install "lib/flamegraph.pl"
      lib.install "lib/foldstackshots.sh"
      lib.install "lib/kcdata.py"
      lib.install "lib/stackcollapse-stackshot.lua"
      lib.install "lib/stackshots.lua"
      lib.install "lib/argparse.lua"
      lib.install "lib/cjson.so"
    end
  end
