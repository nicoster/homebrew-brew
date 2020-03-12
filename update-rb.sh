#!/bin/sh

build=`ls -1 ../archive/`
echo $build
sed -i -e 's!url ".*"!url "https://github.com/nicoster/flamegraph-mac/raw/master/archive/'$build'"!; s!sha256.*!sha256 "'$(sha256sum ../archive/$build|awk '{print $1}')'"!' mkflame.rb