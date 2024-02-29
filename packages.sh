#!/bin/bash

rm -rf Packages Packages.xz Packages.gz Packages.bz2 Packages.lzma Packages.zst
dpkg-scanpackages -m ./debs /dev/null >Packages
xz -c9 Packages > Packages.xz
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2
lzma -c9 Packages > Packages.lzma
zstd -q -c19 Packages > Packages.zst
find ./ -name ".DS_Store" -depth -exec rm {} \;