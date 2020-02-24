class FlamegraphMac < Formula
    desc "Take stackshots with undocumented syscall to make flamegraph on MacOS. Check https://github.com/nicoster/flamegraph-mac for more details."
    homepage "https://github.com/TheHipbot/weather"
    url "https://github.com/nicoster/flamegraph-mac/raw/master/archive/flamegraph-mac-master-1ae4407-20200224-162909.tar.gz"
    sha256 "100da657df51ae1ac0d6974e649cba8ceb677bb1b41cc946d4ff4fdee4cfe22d"
    version "1.3.0"
  
    depends_on "luajit"
  
    bottle :unneeded
 
    def caveats; <<~EOS
        The tool is installed by the name of `mkflamegraph`

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